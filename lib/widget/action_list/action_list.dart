import 'package:crypto_wallet/widget/action_list/action_item.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ActionList extends StatelessWidget {
  const ActionList({
    super.key,
    required this.textTitle,
  });

  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textTitle,
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
                ActionItem(
                  actionBackColor: Color(0xffD975BB),
                  actionImage: 'assets/recieve_one.png',
                  actionText: 'Recieve',
                ),
                SizedBox(
                  width: 12,
                ),
                ActionItem(
                  actionBackColor: Color(0xff7056B2),
                  actionImage: 'assets/sending_one.png',
                  actionText: 'Send',
                ),
                SizedBox(
                  width: 12,
                ),
                ActionItem(
                  actionBackColor: Color(0xffD975BB),
                  actionImage: 'assets/recieve_one.png',
                  actionText: 'Swap',
                ),
                SizedBox(
                  width: 12,
                ),
                ActionItem(
                  actionBackColor: Color(0xff7056B2),
                  actionImage: 'assets/recieve_one.png',
                  actionText: 'Withdraw',
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
