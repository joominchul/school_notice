import 'package:flutter/material.dart';
import 'package:school/Home.dart';
import 'package:webview_flutter/webview_flutter.dart';

class page extends StatelessWidget {
  String? page_url = '';
  String page_name = 'knu';
  WebViewController? controller;

  page(String url, String page_name) {
    this.page_url = url;
    this.page_name = page_name;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        var future = controller?.canGoBack();
        future?.then((canGoBack) {
          if (canGoBack) {
            controller?.goBack();
          } else {
            print("no page");
          }
        });
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(page_name),
            backgroundColor: Colors.indigo,
            centerTitle: true,
            // actions: [IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.home))],
            leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_ios_new),),
          ),
          body: WebView(
            onWebViewCreated: (WebViewController controller) {
              this.controller = controller;
            },
            initialUrl: page_url,
            javascriptMode: JavascriptMode.unrestricted,
          )),
    );
  }
}
