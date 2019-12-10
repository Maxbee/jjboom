import 'package:flutter/material.dart';
import '../../serives/ScreenAdaper.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var selectIdx = 0;
  @override
  Widget build(BuildContext context) {
    ScreenAdper.init(context);
    var leftWidth = ScreenAdper.getScreenWidth() / 8;
    return Row(
      children: <Widget>[
        Container(
          width: leftWidth,
          child: ListView.builder(
            itemCount: 22,
            itemBuilder: (context, index) {
              return Column(
                // height: 40,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectIdx = index;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: ScreenAdper.height(84),
                          padding: EdgeInsets.only(top: ScreenAdper.height(24)),
                          width: double.infinity,
                          color: selectIdx == index
                              ? Color.fromRGBO(240, 246, 246, 0.9)
                              : Colors.white,
                          child: Text(
                            "${index}",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                  )
                ],
                // margin: EdgeInsets.all(20),
              );
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(10),
            height: double.infinity,
            color: Color.fromRGBO(240, 246, 246, 0.9),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 1.3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: 20,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/productList',arguments: {"cid":123});
                  },
                  child: Container(
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image.network(
                          "https://www.itying.com/images/flutter/list8.jpg",
                          fit: BoxFit.cover,
                          height: 28,
                        ),
                      ),
                      Container(
                        height: 20,
                        child: Text("女装"),
                      )
                    ],
                  ),
                ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
