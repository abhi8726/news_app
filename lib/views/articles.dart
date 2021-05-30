import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Articles extends StatefulWidget {
  final String blogUrl;
  Articles({this.blogUrl});

  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {

  final Completer<WebViewController> _completer=Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Daily'),
            Text('News',
              style: TextStyle(
                  color: Colors.red[400]
              ),
            )
          ],
        ),
        actions: [
          Opacity(
                opacity: 0,
                child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.save)),
          )
        ],
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width ,
        child: WebView(
          initialUrl:widget.blogUrl,
          onWebViewCreated:((WebViewController webViewController){
            _completer.complete(webViewController);
          }),
        ),
      ),
    );
  }
}
