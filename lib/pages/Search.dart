import 'package:flutter/material.dart';
import 'package:jjboom/serives/ScreenAdaper.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  
  @override
  Widget build(BuildContext context) {
    ScreenAdper.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 20),
          height: ScreenAdper.height(70),
          decoration: BoxDecoration(
            color: Color.fromRGBO(233, 233, 233, 0.8),
            borderRadius: BorderRadius.circular(30)
          ),
          child: TextField(
            autofocus:true,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        actions: <Widget>[
          InkWell(
            
            child: Container(
              height: ScreenAdper.height(70),
              child: Row(
                children: <Widget>[
                  Text('搜索')
                ],
              ),
            ),
            onTap: (){
              print('hello');
            },
          )
        ],
      ),
    );
  }
}