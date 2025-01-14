import 'package:ailo_ai_chat_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomIconImage extends StatelessWidget {
  const CustomIconImage({super.key, required this.imageSrc});

  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: kMainPrimaryColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image.asset(
          imageSrc,
          fit: BoxFit.contain,
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
