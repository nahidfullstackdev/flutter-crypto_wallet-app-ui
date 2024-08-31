import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AmountCard extends StatefulWidget {
  const AmountCard({super.key});

  @override
  State<AmountCard> createState() => _AmountCardState();
}

class _AmountCardState extends State<AmountCard> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            bottom: 20,
            left: 0,
            right: 0,
            child: Container(
              height: 150,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Color(0xff261863),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(255, 18),
                  bottomLeft: Radius.elliptical(255, 18),
                  bottomRight: Radius.elliptical(255, 20),
                  topRight: Radius.elliptical(255, 20),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff131B63),
                    Color(0xff481162),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  const Positioned(
                    top: 20,
                    left: 45,
                    child: Row(
                      children: [
                        Text(
                          '2.70% Today',
                          style:
                              TextStyle(color: Color(0xffD975BB), fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: Text(
                      '\$12,670.90',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //... floatingaction..
          Positioned(
            bottom: 16,
            left: 25,
            child: FloatingActionButton(
              backgroundColor: const Color(0xffD975BB),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 6,
            child: Lottie.asset('assets/coin_stack.json'),

            // Image.asset(
            //   'assets/coin.png',
            //   height: 250,
            //   width: 200,
            // ),
          ),
        ],
      ),
    );
  }
}
