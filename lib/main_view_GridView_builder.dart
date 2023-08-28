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
      title: '绝望的Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("绝望的Flutter Demo"),
          leading: const Icon(Icons.view_headline_rounded),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _initListData(context, index) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
        ),
        // borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        children: [
          Image.network(
            listData[index]["imageUrl"],
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(listData[index]["title"], style: const TextStyle(fontSize: 18)),
          const SizedBox(
            height: 10,
          ),
          Text(listData[index]["author"],
              style: const TextStyle(fontSize: 10, color: Colors.black26))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: listData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //SliverGridDelegateWithFixedCrossAxisCount实现的是GridView.count的功能
          crossAxisSpacing: 10, //水平子Widget之间 间距
          mainAxisSpacing: 10, //垂直子Widget之间 间距
          crossAxisCount: 2, //一行显示多少个元素
          childAspectRatio: 0.9, //宽高比
        ),
        itemBuilder: _initListData
    );
  }
}
