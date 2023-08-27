import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.cyan
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("绝望的flutter"),),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget> [
        Container(  //ListView直接加Container设置宽度是没有效果的
          height: 120,
          decoration: const BoxDecoration(
              color: Colors.red
          ),
        ),
        Container(
          height: 120,
          decoration: const BoxDecoration(
              color: Colors.yellow
          ),
        ),
        Container(
          height: 120,
          decoration: const BoxDecoration(
              color: Colors.orange
          ),
        ),
        Container(
          height: 120,
          decoration: const BoxDecoration(
              color: Colors.blue
          ),
        ),
        Container(
          height: 120,
          decoration: const BoxDecoration(
              color: Colors.pink
          ),
        ),
        Container(
          height: 120,
          decoration: const BoxDecoration(
              color: Colors.grey
          ),
        ),
        Container(
          height: 120,
          decoration: const BoxDecoration(
              color: Colors.black
          ),
        ),
      ],
    );
  }

}
