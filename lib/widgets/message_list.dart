import 'package:flutter/material.dart';
import 'package:ailo_ai_chat_app/models/message.dart';
import 'package:ailo_ai_chat_app/widgets/message_bubble.dart';

class MessageList extends StatelessWidget {
  final List<Message> messages;
  final ScrollController _scrollController = ScrollController();

  MessageList({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });

    return ListView.builder(
      controller: _scrollController,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return MessageBubble(message: message);
      },
    );
  }
}
