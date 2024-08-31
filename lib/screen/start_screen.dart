import 'package:crypto_wallet/screen/home_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff131B63),
              Color(0xff481162),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 16,
            ),
            //image..
            Image.asset(
              'assets/crypto_image.png',
            ),

            //text..
            const Text(
              'Convert Cash Into Crypto, Simply',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            //Text..
            const SizedBox(
              width: 220,
              child: Text(
                'Convert your bank account and get access to more than 76000 crypto currencies and tokens.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Color.fromARGB(255, 44, 28, 107),
              ),
              label: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffD975BB),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
