import 'package:flutter/material.dart';
import 'ProductContent/First.dart';
import 'ProductContent/Second.dart';
import 'ProductContent/Third.dart';
class ProductContentPage extends StatefulWidget {
  ProductContentPage({Key key}) : super(key: key);

  _ProductContentPageState createState() => _ProductContentPageState();
}

class _ProductContentPageState extends State<ProductContentPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {
                  showMenu(
                      context: context,
                      position: RelativeRect.fromLTRB(600, 102, 10, 0),
                      items: [
                        PopupMenuItem(
                          child: Row(
                            children: <Widget>[Icon(Icons.home), Text('首页')],
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: <Widget>[Icon(Icons.search), Text('搜索')],
                          ),
                        )
                      ]);
                },
              )
            ],
            title: TabBar(
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
                Tab(
                  child: Text('商品'),
                ),
                Tab(
                  child: Text('详情'),
                ),
                Tab(
                  child: Text('评价'),
                )
              ],
            ),
          ),
          body: Stack(
            children: <Widget>[
              TabBarView(
                children: <Widget>[
                  First(),
                  Second(),
                  Third(),
                ],
              ),
              Positioned(
                width: 750,
                height: 80,
                bottom: 0,
                child: Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(
                        color: Colors.black38,
                        width: 0.5
                      )
                    )
                  ),
                  child: Text('底部'),
                ),
              )
            ],
          )),
    );
  }
}
