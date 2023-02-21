import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Player {
  String name;

  Player({required this.name});
}

void main() {
  var woojin = Player(name: 'woojin');
  woojin.name;
  // 위젯을 실행시키는 함수 root widget
  runApp(App());
}

class App extends StatelessWidget {
  // statlessWidget 상속 받아서 build메소드 오버라이드
  @override
  Widget build(BuildContext context) {
    // 기본테마 설정하기
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello world'),
        ),
        appBar: AppBar(title: Text('Hello Flutter!')),
      ),
    );
  }
}
