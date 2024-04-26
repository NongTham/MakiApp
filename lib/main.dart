import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:makiserviceshop/splash_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: SplashPage(), debugShowCheckedModeBanner: false);
  }
}

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          const CradDialog(),
          Positioned(
            top: 0,
            right: 0,
            height: 28,
            width: 28,
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(8),
                shape: const CircleBorder(),
                backgroundColor: const Color(0xffEC5B5B),
              ),
              child: Image.network("https://cdn.discordapp.com/attachments/1137219440593883136/1194701633741934682/R.png?ex=65b14f99&is=659eda99&hm=c3c3632153d15ae0d83ad3aaea8d4c05993c5aa09ecb2d81ed53c11a0659ac77&"),
            ),
          )
        ],
      ),
    );
  }
}

class CradDialog extends StatelessWidget {
  const CradDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 16,
        ),
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(10, 10, 10, 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              "https://cdn.discordapp.com/attachments/1137219440593883136/1194694931902636042/image-removebg-preview_1.png?ex=65b1495c&is=659ed45c&hm=1664f37f60055d8179d5f3f357c2224c498c46191a9b8fb87d2bb11666b93eb4&",
              width: 72,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Alert',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 32,
                      ),
                      foregroundColor: const Color(0xffEC5B5B),
                      side: const BorderSide(
                        color: Color(0xffEC5B5B),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Cancel')),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffEC5B5B),
                    foregroundColor: const Color(0xff2A303E),
                  ),
                  onPressed: () {},
                  child: const Text('Yes'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
