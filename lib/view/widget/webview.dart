import 'package:flutter/material.dart';
import 'package:kip_mobile/view/widget/article.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:share_plus/share_plus.dart';

class AppWebView extends StatefulWidget {
  AppWebView({super.key, required this.link});

  final String link;

  @override
  State<AppWebView> createState() => _AppWebView();
}

class _AppWebView extends State<AppWebView> {
  late final WebViewController _controller;

  Future<String?> readTitleJS() async {
    return await _controller.getTitle();
  }

  String title = "";
  bool pageLoaded = false;

  @override
  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.black)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            if (progress == 100) {
              setState(() {
                pageLoaded = true;
              });
            }
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            readTitleJS().then((value) {
              setState(() {
                title = value!;
              });
            });
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.link));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(45),
          child: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.ios_share),
                onPressed: () {
                  Share.share(widget.link);
                },
              ),
            ],
          )),
      body: pageLoaded
          ? WebViewWidget(controller: _controller)
          : Container(
              color: Colors.black,
              child: Center(
                  child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ))),
    );
  }
}
