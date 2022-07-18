import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:riders_memo/view_model/root_page/root_page_notifier.dart'
    as root_page;
import 'package:riders_memo/model/root_page/root_page_state.dart';
import 'package:riders_memo/view/main/index/index.dart' as main;
import 'package:riders_memo/view/sub/index/index.dart' as sub;
import 'package:riders_memo/view/setting/index/index.dart' as setting;

class RootPage extends StatelessWidget {
  final List<Widget> _pageList = <Widget>[
    const main.Index(),
    const sub.Index(),
    const setting.Index(),
  ];

  RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final pageType = ref.watch(root_page.pageTypeProvider.state);

        return Scaffold(
          appBar: AppBar(),
          floatingActionButton: const FloatingButton(),
          body: _pageList[pageType.state.index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageType.state.index,
            onTap: (index) {
              pageType.state = PageType.values[index];
            },
            items: root_page.bottomList,
          ),
        );
      },
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      /// both default to 16

      // marginEnd: 18,
      // marginBottom: 20,

      // animatedIcon: AnimatedIcons.menu_close,
      // animatedIconTheme: IconThemeData(size: 22.0),
      /// This is ignored if animatedIcon is non null
      icon: Icons.add,
      activeIcon: Icons.remove,
      iconTheme: IconThemeData(color: Colors.grey[50], size: 30),

      /// The label of the main button.
      // label: Text("Open Speed Dial"),
      /// The active label of the main button, Defaults to label if not specified.
      // activeLabel: Text("Close Speed Dial"),

      /// Transition Builder between label and activeLabel, defaults to FadeTransition.
      // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
      /// The below button size defaults to 56 itself, its the FAB size  It also affects relative padding and other elements

      // buttonSize: 50,
      // visible: true,

      /// If true user is forced to close dial manually
      /// by tapping main button and overlay is not rendered.
      closeManually: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      tooltip: 'Speed Dial',
      heroTag: 'speed-dial-hero-tag',
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 8.0,
      shape: const CircleBorder(),

      // orientation: SpeedDialOrientation.Up,
      // childMarginBottom: 2,
      // childMarginTop: 2,
      gradientBoxShape: BoxShape.circle,
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.lightBlue, Colors.lightBlue],
      ),
      children: [
        SpeedDialChild(
          child: const Icon(Icons.accessibility),
          backgroundColor: Colors.white,
          label: 'First',
          labelStyle: const TextStyle(fontSize: 18.0),
          onTap: () => print('FIRST CHILD'),
          onLongPress: () => print('FIRST CHILD LONG PRESS'),
        ),
        SpeedDialChild(
          child: const Icon(Icons.brush),
          backgroundColor: Colors.white,
          label: 'Second',
          labelStyle: const TextStyle(fontSize: 18.0),
          onTap: () => print('SECOND CHILD'),
          onLongPress: () => print('SECOND CHILD LONG PRESS'),
        ),
        SpeedDialChild(
          child: const Icon(Icons.keyboard_voice),
          backgroundColor: Colors.white,
          label: 'Third',
          labelStyle: const TextStyle(fontSize: 18.0),
          onTap: () => print('THIRD CHILD'),
          onLongPress: () => print('THIRD CHILD LONG PRESS'),
        ),
      ],
    );
  }
}
