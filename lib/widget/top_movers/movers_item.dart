import 'package:flutter/material.dart';

class MoversItem extends StatelessWidget {
  const MoversItem({
    super.key,
    required this.coinName,
    required this.percentage,
    required this.graphColor,
    required this.graphImage,
    required this.percentColor,
  });

  final String coinName;
  final String percentage;
  final Color graphColor;
  final String graphImage;
  final Color percentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: const BoxDecoration(
        color: Color(0xfff8f8fa),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            left: 60,
            top: 30,
            child: Image.asset(
              graphImage,
              color: graphColor,
              height: 100,
            ),
          ),
          Positioned(
            top: 16,
            left: 20,
            child: Text(
              percentage,
              style: TextStyle(color: percentColor),
            ),
          ),
          Positioned(
            top: 35,
            left: 20,
            child: Text(
              coinName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
