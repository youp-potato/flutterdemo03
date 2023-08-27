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
        Divider(thickness: 1,),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("首页"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(thickness: 1,),
        ListTile(
          leading: Icon(Icons.assignment),
          title: Text("全部订单"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(thickness: 1,),
        ListTile(
          leading: Icon(Icons.payment,color: Colors.blue,),
          title: Text("待付款"),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        Divider(thickness: 1,),
      ],
    );
  }

}
