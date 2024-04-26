import 'package:flutter/material.dart';
import 'package:makiserviceshop/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    goToHome();
  }

  void goToHome() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromRGBO(49, 52, 65, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "https://media.discordapp.net/attachments/1137219440593883136/1159749938830381066/Maki_Service_LOGO_1.png?ex=65aa20cc&is=6597abcc&hm=2650e0e423586544a51a10524f642c372f8dbca38415ec5a5071258731a7998e&=&format=webp&quality=lossless",
              width: 48,
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        color: Colors.green,
                        backgroundColor: Colors.amberAccent,
                        strokeWidth: 2.0,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        'Loading...',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
