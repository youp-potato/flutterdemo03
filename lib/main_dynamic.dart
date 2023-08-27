import 'package:flutter/material.dart';
import 'res/listData.dart';

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

  //第一种方法
  // List<Widget> _initListData(){
  //   List<Widget> list = [];
  //   for (var value in listData) {
  //     list.add(
  //       ListTile(
  //         leading: Image.network("${value["imageUrl"]}"),
  //         title: Text("${value["title"]}"),
  //         subtitle: Text("${value["author"]}"),
  //       )
  //     );
  //   }
  //   return list;
  // }

  List<Widget> _initListData(){
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.network("${value["imageUrl"]}"),
        title: Text("${value["title"]}"),
        subtitle: Text("${value["author"]}"),
        onTap: (){},
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initListData(),
    );
  }

}
