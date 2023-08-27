import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
/*
    const ListTile({
    Key key,
    this.leading, //title之前的widget
    this.title, //列表块的主要内容
    this.subtitle, //title下方显示的内容
    this.trailing, //标题后显示的widget，通常是一个[Icon]widget
    this.isThreeLine = false, //是否打算显示三行文本
    this.dense, //此列表图块是否是垂直密集列表的一部分，如果是true文本将会更小
    this.visualDensity,
    this.shape,
    this.contentPadding, //内容与边框之间的边距，默认是16
    this.enabled = true, //列表块是否可交互
    this.onTap, //当用户点击此列表图块时调用
    this.onLongPress, //当用户长按此列表图块时调用
    this.mouseCursor,
    this.selected = false, //如果选中列表块，文本和图标的颜色将成为主题的主颜色
    this.focusColor,
    this.hoverColor,
    this.focusNode,
    this.autofocus = false,
    })
 */
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
      children:  <Widget> [
        const Divider(),
        ListTile(
          leading: Image.network("https://img0.baidu.com/it/u=514828438,3382997608&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500",height: 40,width: 80,alignment: Alignment.center,),
          title: const Text("奥希嫩湖露营地"),
          // subtitle: const Text("奥希嫩湖位于伯尔尼阿尔卑斯山布吕姆利萨普山脚下。湖面海拔 1578 米，是阿尔卑斯山较大的湖泊之一。从坎德施泰格乘坐缆车，然后步行半小时穿过牧场和松树林，便可到达湖边，夏季湖水温度可达 20 摄氏度。这里的活动包括划船和乘坐夏季雪橇。",),
          trailing: const Icon(Icons.chevron_right),
          onTap: (){},
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F311e0cac-e6f6-4efd-b079-acd318cee951%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1695719272&t=21d5830a13b0ab268ac197a85934bacf",height: 40,width: 80,alignment: Alignment.center,),
          title: const Text("北京自行车夜骑感兴趣的来"),
          trailing: const Icon(Icons.chevron_right),
          onTap: (){},
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://img1.baidu.com/it/u=3362135286,2916447776&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=753",height: 40,width: 80,alignment: Alignment.center,),
          title: const Text("剧本杀8人场，现在还差3个人，速来！！！"),
          enabled: true,
          trailing: const Icon(Icons.chevron_right),
          onTap: (){},
        )
      ],
    );
  }

}
