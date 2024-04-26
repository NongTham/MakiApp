import 'package:flutter/material.dart';
import 'package:makiserviceshop/my_web_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const WebViewApp(),
    );
  }
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse("https://client.maki-service.xyz/"),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(49, 52, 65, 1),
        foregroundColor: Colors.white,
        title: const Text("Maki Service Shop"),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () async {
                  final messager = ScaffoldMessenger.of(context);
                  if (await controller.canGoBack()) {
                    await controller.goBack();
                  } else {
                    messager.showSnackBar(
                      const SnackBar(content: Text("No Back History Found")));
                    return;
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: () async {
                  final messager = ScaffoldMessenger.of(context);
                  if (await controller.canGoForward()) {
                    await controller.goForward();
                  } else {
                    messager.showSnackBar(
                      const SnackBar(content: Text("No Forward History Found")));

                    return;
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.replay),
                onPressed: () {
                  controller.reload();
                },
              )
            ],
          )
        ],
      ),
      body: MyWebView(
        controller: controller,
      ),
    );
  }
}
