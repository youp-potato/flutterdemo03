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
      children:<Widget> [
        SizedBox(
          height: 120,
          child: ListView(  //水平列表高度是自适应的 需要在外层加一个SizeBox或者Container组建
            scrollDirection: Axis.horizontal, //表示水平列表,高度是自适应的
            padding: const EdgeInsets.all(10),
            children: <Widget> [
              Container(  //ListView直接加Container设置宽度是没有效果的
                width: 120,
                decoration: const BoxDecoration(
                    color: Colors.white
                ),
                child:  Column(
                  children: [
                    SizedBox(
                      height: 80,
                      child: Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201412%2F16%2F20141216080718_5tcmT.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1695720553&t=15cab6c7302937616e00cbcd3b5dabe5",fit: BoxFit.cover,),
                    ),
                    const Text("小熊猫的惬意")
                  ],
                ),
              ),
              Container(
                width: 120,
                decoration: const BoxDecoration(
                    color: Colors.yellow
                ),
              ),
              Container(
                width: 120,
                decoration: const BoxDecoration(
                    color: Colors.orange
                ),
              ),
              Container(
                width: 120,
                decoration: const BoxDecoration(
                    color: Colors.blue
                ),
              ),
              Container(
                width: 120,
                decoration: const BoxDecoration(
                    color: Colors.pink
                ),
              ),
              Container(
                width: 120,
                decoration: const BoxDecoration(
                    color: Colors.grey
                ),
              ),
              Container(
                width: 120,
                decoration: const BoxDecoration(
                    color: Colors.black
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

}
