import 'package:flutter/material.dart';
import 'package:ailo_ai_chat_app/models/message.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Align(
        alignment:
            message.isUser ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: message.isUser
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: message.isUser ? Radius.circular(20) : Radius.zero,
              bottomRight: message.isUser ? Radius.zero : Radius.circular(20),
            ),
          ),
          child: message.isUser
              ? SelectableText(
                  message.text,
                  style: message.isUser
                      ? Theme.of(context).textTheme.bodyMedium
                      : Theme.of(context).textTheme.bodySmall,
                )
              : AnimatedTextKit(
                  repeatForever: false,
                  displayFullTextOnTap: true,
                  totalRepeatCount: 1,
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      message.text,
                      textStyle: message.isUser
                          ? Theme.of(context).textTheme.bodyMedium!
                          : Theme.of(context).textTheme.bodySmall!,
                      speed: const Duration(milliseconds: 20),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
