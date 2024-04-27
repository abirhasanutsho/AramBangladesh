import 'package:aram_bangladesh/screen/spalash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(textTheme: GoogleFonts.openSansTextTheme()),
      home:  SplashScreen22(),
    );
  }
}


class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {


  late WebViewController _controller;
  bool isLoading=true;

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[800],
        elevation: 5,
        title: Text("Aram Bangladesh",style: TextStyle(fontSize: 16,color: Colors.white),),
        actions: [
          IconButton(onPressed: ()async{
            if(await _controller.canGoBack()){
              _controller.goBack();
            }
            

          }, icon: Icon(Icons.arrow_back,color: Colors.white,))
        ],
      ),
      body:  Stack(
        children: [
          // WebView(
          //   javascriptMode: JavascriptMode.unrestricted,
          //   initialUrl: 'https://aram.com.bd/',
          //   onWebViewCreated: (controller){
          //     this._controller = controller;
          //   },
          //   onPageFinished: (finish) {
          //     setState(() {
          //       isLoading = false;
          //     });
          //   },
          // ),
          isLoading ? Center( child: SpinKitThreeBounce(
            color: Colors.red[800],
            size: 40,
          ),)
              : Stack(),
        ],
      ),
    );

  }
}
