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
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      children: <Widget> [
        Image.network("https://img0.baidu.com/it/u=211990115,1771212548&fm=253&fmt=auto&app=138&f=JPEG?w=800&h=500",),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "企鹅的眺望",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        const Divider(),
        Image.network("https://up.enterdesk.com/edpic/ea/68/f1/ea68f1c3fa7de57fd4d18d5f25dee741.jpg"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "猫咪的凝视",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        const Divider(),
        Image.network("https://up.36992.com/22/59/df/4e/846d91c10c8f7cc4bf0d08fba2dafb44.jpg"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "狮子的咆哮",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        const Divider(),
        Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F16%2F20141216080718_5tcmT.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1695720553&t=15cab6c7302937616e00cbcd3b5dabe5"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "小熊猫的慵懒",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        const Divider(),
        Image.network("https://up.enterdesk.com/edpic/fa/96/ef/fa96efe52317faa20f12109bef99cf8c.jpg"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          height: 44,
          child: const Text(
            "小狮子的惬意",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        const Divider(),
      ],
    );
  }

}
