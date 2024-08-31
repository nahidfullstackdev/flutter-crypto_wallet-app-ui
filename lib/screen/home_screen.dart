import 'package:crypto_wallet/widget/action_list/action_list.dart';
import 'package:crypto_wallet/widget/amount_card.dart';
import 'package:crypto_wallet/widget/top_movers/top_movers.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 90,
            centerTitle: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Nahid',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Color(0xffD975BB),
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notification_add_outlined,
                  color: Color.fromARGB(144, 158, 158, 158),
                ),
              )
            ],
          ),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                AmountCard(),
                ActionList(
                  textTitle: 'Actions',
                ),
                TopMovers(),
                ActionList(
                  textTitle: 'More',
                ),
                TopMovers(),
              ],
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.white,
            color: const Color(0xff131B63),
            buttonBackgroundColor: const Color(0xff131B63),
            onTap: (value) {},
            items: const [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.wallet,
                color: Colors.white,
              ),
              Icon(
                Icons.swap_calls,
                color: Colors.white,
              ),
              Icon(
                Icons.bar_chart,
                color: Colors.white,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
