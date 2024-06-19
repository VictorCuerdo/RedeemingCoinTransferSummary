import 'package:flutter/material.dart';

class SummaryDetail extends StatelessWidget {
  //In this class will handle the look and design of the 4x2 summary transfer information.
  final String title;
  final String value;

  const SummaryDetail({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
