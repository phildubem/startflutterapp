import 'package:flutter/material.dart';

void main () => runApp (MyFlutterApp());

class MyFlutterApp extends StatelessWidget {

  final List<String>listof= ["Anusionwu Philip Chidubem", "PhilDubem","phildubem@gmail.com","Mobile and Coding"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Start Flutter App",
      home: Scaffold (
        appBar: AppBar(title: Text("Start Flutter App"),),
        backgroundColor: Color (0xFF21BFBD),
        body: Container (
          child: new ListView.builder(
              itemBuilder: (_,int index) => ListDataItem(this.listof[index]),
              itemCount: this.listof.length,
          ),
        )
        ),
      );

  }
}

class ListDataItem extends StatelessWidget {

  String itemName;
  ListDataItem(this.itemName);

  @override
  Widget build(BuildContext context) {
    return new Card (
      child: new Container (
        margin: EdgeInsets.all(8.0),
        child: new Row (
          children: <Widget>[
            new Padding(padding:EdgeInsets.all(9.0),),
            new Text(itemName, style: TextStyle(fontSize: 20.0),)
          ],
        )
      )
    );
  }

}