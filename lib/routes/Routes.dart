import 'package:flutter/material.dart';
import '../pages/Search.dart';
import '../pages/ProductList.dart';
import '../pages/ProductContent.dart';
// 配置路由
final routes = {
    // '/course': (context, {arguments}) => CoursePage(
    //       arguments: arguments,
    //     )
    '/content':(context)=> ProductContentPage(),
    '/productList':(context,{arguments})=> ProductListPage(arguments:arguments),
     '/search':(context)=>SearchPage()
};

var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};