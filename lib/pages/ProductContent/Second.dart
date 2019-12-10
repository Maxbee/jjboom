import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
class Second extends StatefulWidget {
  Second({Key key}) : super(key: key);

  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           Text('xxx'),
           Expanded(
             flex: 1,
             child: InAppWebView(
                  initialUrl: "https://www.baidu.com/",
                  initialHeaders: {},
                  initialOptions: InAppWebViewWidgetOptions(
                    inAppWebViewOptions: InAppWebViewOptions(
                        debuggingEnabled: true,
                    )
                  ),
                  onLoadStart: (InAppWebViewController controller, String url) {
                    print('object');
                  },
             )
           )
         ],
       ),
    );
  }
}
