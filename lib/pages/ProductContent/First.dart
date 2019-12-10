import 'package:flutter/material.dart';
import 'package:jjboom/serives/ScreenAdaper.dart';

class First extends StatefulWidget {
  First({Key key}) : super(key: key);

  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  _attrBottomSheet() {
    print('click');
    showModalBottomSheet(
        context: context,
        builder: (contex) {
          return GestureDetector(
            onTap: () {
              return false;
            },
            child: Container(
              height: 400,
              child: Text('data'),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    ScreenAdper.init(context);
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: ListView(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network("https://www.itying.com/images/flutter/p1.jpg",
                fit: BoxFit.cover),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text("联想ThinkPad 翼480（0VCD） 英特尔酷睿i5 14英寸轻薄窄边框笔记本电脑",
                style: TextStyle(
                    color: Colors.black87, fontSize: ScreenAdper.size(36))),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Text("特价: "),
                      Text("¥28",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: ScreenAdper.size(46))),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("原价: "),
                      Text("¥50",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: ScreenAdper.size(28),
                              decoration: TextDecoration.lineThrough)),
                    ],
                  ),
                )
              ],
            ),
          ),
          //筛选
          Container(
              margin: EdgeInsets.only(top: 10),
              height: ScreenAdper.height(80),
              child: InkWell(
                onTap: () {
                  _attrBottomSheet();
                },
                child: Row(
                  children: <Widget>[
                    Text("已选: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("115，黑色，XL，1件")
                  ],
                ),
              )),

          Divider(),
          Container(
            height: ScreenAdper.height(80),
            child: Row(
              children: <Widget>[
                Text("运费: ", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("免运费")
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
