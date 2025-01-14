import 'package:ailo_ai_chat_app/widgets/continue_button.dart';
import 'package:ailo_ai_chat_app/widgets/header_section.dart';
import 'package:ailo_ai_chat_app/widgets/logo_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ailo_ai_chat_app/screens/home_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 18),
            const HeaderSection(),
            const SizedBox(height: 32),
            const LogoSection(),
            const SizedBox(height: 32),
            ContinueButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                  (route) => false,
                );
              },
            ),
            SizedBox(height: 1),
          ],
        ),
      ),
    );
  }
}
