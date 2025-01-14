import 'package:flutter/material.dart';
import 'package:ailo_ai_chat_app/constants/colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle headerTextStyle = TextStyle(
      fontSize: 44,
      fontWeight: FontWeight.bold,
      color: kMainPrimaryColor,
    );

    TextStyle subHeaderTextStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: kMainPrimaryColor,
    );

    TextStyle descriptionTextStyle = TextStyle(
      fontSize: 16,
      color: kMainTextColor.withOpacity(0.6),
    );

    return Column(
      children: [
        Text('Ailo', style: headerTextStyle),
        Text('Your AI Assistant', style: subHeaderTextStyle),
        const SizedBox(height: 16),
        Text(
          'Using Ailo software, you can ask questions and receive articles using an artificial intelligence assistant.',
          textAlign: TextAlign.center,
          style: descriptionTextStyle,
        ),
      ],
    );
  }
}
