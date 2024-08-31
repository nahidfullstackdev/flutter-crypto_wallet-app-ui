import 'package:crypto_wallet/widget/top_movers/movers_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopMovers extends StatelessWidget {
  const TopMovers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Movers',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MoversItem(
                  coinName: 'BTC',
                  percentage: '+34.98%',
                  percentColor: Colors.green,
                  graphImage: 'assets/up.png',
                  graphColor: Colors.green,
                ),
                SizedBox(
                  width: 12,
                ),
                MoversItem(
                  coinName: 'SOLANA',
                  percentage: '-4.98%',
                  percentColor: Colors.pink,
                  graphImage: 'assets/down.png',
                  graphColor: Colors.pink,
                ),
                SizedBox(
                  width: 12,
                ),
                MoversItem(
                  coinName: 'DOT',
                  percentage: '+34.98%',
                  percentColor: Colors.green,
                  graphImage: 'assets/up.png',
                  graphColor: Colors.green,
                ),
                SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
