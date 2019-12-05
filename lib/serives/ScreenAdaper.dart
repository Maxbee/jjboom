import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenAdper{
  static init(context){
      ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
  }
  static height(double value){
    return ScreenUtil.getInstance().setHeight(value);
  } 

  static width(value){
    return ScreenUtil.getInstance().setWidth(value);
  }

  static getScreenWidth(){
    return ScreenUtil.screenWidth ;
  }

  static getScreenHeight(){
    return ScreenUtil.screenHeight;
  }
}