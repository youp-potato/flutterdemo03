import 'package:flutter/material.dart';
import 'res/listData.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: '绝望的Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("绝望的Flutter Demo"),leading: const Icon(Icons.view_headline_rounded),),
        body: const HomePage(),
      ),
    );
  }

}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  List<Widget> _initListData(){
    var list = listData.map((e) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
          ),
          // borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
          children: [
            Image.network(e["imageUrl"],
              fit: BoxFit.cover,),
            const SizedBox(height: 10,),
            Text(e["title"],style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10,),
            Text(e["author"],style: const TextStyle(fontSize: 10,color: Colors.black26))
          ],
        ),
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 10,    //mainAxisSpacing垂直子widget之间 间距
        crossAxisSpacing: 10 ,  //crossAxisSpacing水平widget之间 间距
        crossAxisCount: 2,  //crossAxisCount是GridView.count的组件,通过它可以快速创建横轴子元素为固定数量的GridView
        // maxCrossAxisExtent: 150,  //maxCrossAxisExtent是GridView.extent的组件，通过它可以快速创建横轴子元素为固定最大长度的GridView
        childAspectRatio: 0.9,
        children: _initListData()


    );
  }
}