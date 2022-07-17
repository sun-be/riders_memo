import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:riders_memo/view_model/main/index/index_notifier.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  // Index({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          height: 0.0,
        ),
        itemCount: indexList.length,
        itemBuilder: (BuildContext context, int index) {
          final text = indexList[index];
          return Dismissible(
            key: Key(text),
            background: Container(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              alignment: AlignmentDirectional.centerEnd,
              color: Colors.red,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              // スワイプ後に実行される（削除処理などを書く）
              print('onDismissed');
            },
            child: ListTile(
              title: Text(
                text,
              ),
              onLongPress: () {
                print('longTap');
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[200],
        onPressed: () async {
          // （省略）タップされた際の処理
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  static const List<Widget> listTiles = <Widget>[
    ListTile(
      leading: Icon(Icons.map),
      title: Text('Map'),
    ),
    ListTile(
      leading: Icon(Icons.photo_album),
      title: Text('Album'),
    ),
    ListTile(
      leading: Icon(Icons.phone),
      title: Text('Phone'),
    ),
  ];
}
