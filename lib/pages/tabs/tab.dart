import 'package:flutter/material.dart';

import 'Home.dart';
import 'Category.dart';
import 'Cart.dart';
import 'User.dart';
class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List<Widget> PageList = [
    HomePage(),
    Category(),
    Cart(),
    User()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('首页'),
      ), 
      body: this.PageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: this._currentIndex,
        onTap: (index){
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('购物车')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('我的')
          )
        ],
      ), 
    );
  }
}