import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// 2→flutter pub run build_runner watch --delete-conflicting-outputs
// この時点ではまだコードにエラーが出ますが無視して問題ない（コマンドでコード生成）

// foundation パッケージのインポートは必須ではないがdevtool で綺麗に表示される

// ※※※「mainCount」と「subCount」という2つの値を用意している※※※
// クラスの作成にはfreezedを使用している
// freezedを使用することで、不変クラスを作成することが可能

// 【必須】生成されるファイル名を指定する（ `生成元ファイル名.freezed.dart` ）
part 'root_page_state.freezed.dart';

enum PageType {
  first,
  second,
}

@freezed
class RootPageState with _$RootPageState {
  const factory RootPageState({
    @Default(0) int mainCount,
    @Default(0) int subCount,
  }) = _RootPageState;
}
