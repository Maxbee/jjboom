import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../serives/ScreenAdaper.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var itemWidth = (ScreenAdper.width(ScreenAdper.getScreenWidth())-30)/2;

  @override
  void initState() { 
    super.initState();
    print(ScreenAdper.getScreenWidth());
  }
  List<Map> _imgList = [
    {"url": "https://www.itying.com/images/flutter/slide01.jpg"},
    {"url": "https://www.itying.com/images/flutter/slide02.jpg"},
    {"url": "https://www.itying.com/images/flutter/slide03.jpg"}
  ];
  Widget _swiperWedget() {
    return Container(
      child: AspectRatio(
        aspectRatio: 2/1,
        child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
            _imgList[index]["url"],
              fit: BoxFit.fill,
            );
          },
          itemCount: _imgList.length,
          pagination: new SwiperPagination(),
          autoplay: true,
          // control: new SwiperControl(),
        ),
      ),
    );
  }

  Widget _titleWidget(String title){
    return Container(
      height: ScreenAdper.height(32),
      margin: EdgeInsets.only(left: ScreenAdper.width(20)),
      padding: EdgeInsets.only(left: ScreenAdper.width(20)),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.red,
            width: ScreenAdper.width(10),
            )
        )
      ),
      child: Text(title,style: TextStyle(color: Colors.black54),),
    );
  }

  Widget _HotProductList(){
    return Container(
            margin: EdgeInsets.only(left:ScreenAdper.height(20) ,right:ScreenAdper.width(20)),
            height: ScreenAdper.height(170),
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right:ScreenAdper.width(20)),
                      width: ScreenAdper.height(140),
                      height: ScreenAdper.height(140),
                      child: Image.network('https://www.itying.com/images/flutter/hot${index+1}.jpg',fit:BoxFit.cover,),
                      
                    ),
                    Text('${index}')
                    
                  ],
                );
              },
              itemCount: 10,
            ),
          );
  }

  Widget _recProduceListWidget(){
    return  Container(
      width: 190,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
          width: 1
        )
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Image.network('https://www.itying.com/images/flutter/list1.jpg',fit:BoxFit.cover),
          ),
          Text('死发iadjifjoiadfjidjasfioadjsoijdsifjiodasjfidosjfoiajdfiojdai剪短发阿斯顿发大发',overflow: TextOverflow.ellipsis,maxLines: 2,),
          Padding(
            padding: EdgeInsets.only(top: ScreenAdper.height(20)),
            child: Stack(
              
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('¥188.8',style: TextStyle(color: Colors.red,fontSize: 16)),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('12212',style:TextStyle(color: Colors.black54,fontSize: 14,decoration: TextDecoration.lineThrough,),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {   
    ScreenAdper.init(context);

    return Container(
      child: ListView(
        children: <Widget>[
          _swiperWedget(),
          SizedBox(height: ScreenAdper.height(20),),
          _titleWidget("猜你喜欢"),
          SizedBox(height: ScreenAdper.height(20),),
          _HotProductList(),
          SizedBox(height: ScreenAdper.height(20),),
          _titleWidget("热门推荐"),
          SizedBox(height: ScreenAdper.height(20),),
          Container(
            padding: EdgeInsets.all(10),
            child:Wrap(
              runSpacing: 10,//上下间距
              spacing: 10,//左右间距
              children: <Widget>[
                _recProduceListWidget(),
                _recProduceListWidget(),
                _recProduceListWidget(),
                _recProduceListWidget(),
                 _recProduceListWidget(),
              ],
            )
          )
          
        ],
      ),
    );
  }
}
