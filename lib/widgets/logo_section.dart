import 'package:flutter/material.dart';
import 'package:ailo_ai_chat_app/constants/colors.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Container(
      width: screenWidth / 1.3,
      height: screenWidth / 1.3,
      decoration: BoxDecoration(
        color: kMainPrimaryColor,
        borderRadius: BorderRadius.circular(500),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
          width: screenWidth / 1.7,
          height: screenWidth / 1.7,
        ),
      ),
    );
  }
}
