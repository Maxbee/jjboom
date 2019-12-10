import 'package:flutter/material.dart';
import '../serives/ScreenAdaper.dart';

class ProductListPage extends StatefulWidget {
  Map arguments;
  ProductListPage({Key key, this.arguments}) : super(key: key);

  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    ScreenAdper.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 22,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(right: 10),
                        height: ScreenAdper.width(180),
                        width: ScreenAdper.width(180),
                        child: Image.network(
                          "https://www.itying.com/images/flutter/list2.jpg",
                          fit: BoxFit.contain,
                        )),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: ScreenAdper.width(180),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '西班牙进口 蓓昂斯（BYPHASSE）温和养肤卸妆水500ml/瓶 脸部清洁无刺激眼唇保湿',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                                children: <Widget>[
                                  Container(
                                    height: ScreenAdper.height(36),
                                    margin: EdgeInsets.only(right: 10),
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),

                                    //注意 如果Container里面加上decoration属性，这个时候color属性必须得放在BoxDecoration
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(230, 230, 230, 0.9),
                                     
                                    ),

                                    child: Text("4g"),
                                  ),
                                  Container(
                                    height: ScreenAdper.height(36),
                                    margin: EdgeInsets.only(right: 10),
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(230, 230, 230, 0.9),
                                    ),
                                    child: Text("126"),
                                  ),
                                ],
                              ),
                          Text(
                            "¥990",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          )
                        ],
                      ),
                      )
                    )
                  ],
                ),
                Divider(
                  height: 20,
                ),
              ],
            );
          },
        ),
      ),
      endDrawer: Drawer(
        child: Text('x'),
        
      ),
    );
  }
}
