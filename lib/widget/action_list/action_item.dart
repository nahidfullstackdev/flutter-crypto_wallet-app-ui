import 'package:flutter/material.dart';

class ActionItem extends StatelessWidget {
  const ActionItem(
      {super.key,
      required this.actionText,
      required this.actionImage,
      required this.actionBackColor});

  final String actionText;
  final String actionImage;
  final Color actionBackColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 150,
      decoration: BoxDecoration(
        color: actionBackColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 25,
            bottom: 45,
            child: Image.asset(
              actionImage,
              height: 150,
            ),
          ),
          Positioned(
            bottom: 12,
            left: 16,
            child: Text(
              actionText,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            bottom: 12,
            right: 16,
            child: Icon(
              Icons.arrow_forward_sharp,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
