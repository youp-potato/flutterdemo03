import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
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
      children: const <Widget> [
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),  //列表中对应的下划线
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
        ListTile(title: Text("我是一个列表"),),
        Divider(),
      ],
    );
  }

}
