import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riders_memo/model/root_page/root_page_state.dart'; // model

final bottomList = bottomItemList;
// 3
// ※※※「View」と「Model」を紐つける役割を担う※※※
// 状態管理にはRiverpodを使用している
// Riverpodを使用することで値をグローバル定数として宣言できるため、
// どのWidgetからもデータを取得できる
// 操作内容をStateNotifierにまとめ、StateNotifierProviderで状態を管理する
final pageTypeProvider = StateProvider<PageType>((ref) => PageType.first);

class RootPageNotifier extends StateNotifier<RootPageState> {
  // 初期値の指定
  RootPageNotifier() : super(const RootPageState()); // model(HomePageState)

  // メインカウントを+1する
  void increaseMainCount() async {
    state = state.copyWith(mainCount: state.mainCount + 1);
  }

  // サブカウントを+1する
  void increaseSubCount() async {
    state = state.copyWith(subCount: state.subCount + 1);
  }

  // すべてのカウントを0に戻す
  void resetAllCount() async {
    state = state.copyWith(
      mainCount: 0,
      subCount: 0,
    );
  }
}

// HomePageNotifierの状態を管理する
// .autoDispose↓
// 多くの場合、参照されなくなったプロバイダのステート（状態）は破棄することが望ましい
// 破棄する理由は様々だが、次のようなケースが考えられる
// 例1：Firebase 使用時に、サービスとの接続を切って不必要な負荷を避けるため
// 例2：ユーザが別の画面に遷移してまた戻って来る際に、
// ステートをリセットしてデータ取得をやり直すため
// 参考：https://riverpod.dev/ja/docs/concepts/modifiers/auto_dispose/

final homePageProvider =
    StateNotifierProvider.autoDispose<RootPageNotifier, RootPageState>(
  (ref) => RootPageNotifier(),
);
