import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(

          ),
          title: const Text("绝望的flutter"),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // List<String> list = [];
  // MyHomePage({super.key}) {
  //   for (var i = 0; i < 20; i++) {
  //     list.add("我是第${i + 1}条数据");
  //   }
  // }
  // @override
  // Widget build(BuildContext context) {
  //   return ListView.builder(
  //       itemCount: list.length,
  //       itemBuilder: (context, index) { //表示循环遍历数据
  //         return ListTile(
  //           title: Text(list[index]),
  //         );
  //       });
  // }
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index){  //直接在组件中循环遍历listData中的数据
          return ListTile(
            leading: Image.network(listData[index]["imageUrl"]),
            title: Text(listData[index]["title"]),
            subtitle: Text(listData[index]["author"]),
            onTap: (){},
          );
        }
    );
  }


}
