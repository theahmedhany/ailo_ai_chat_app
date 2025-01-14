import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ailo_ai_chat_app/widgets/custom_app_bar.dart';
import 'package:ailo_ai_chat_app/widgets/message_input.dart';
import 'package:ailo_ai_chat_app/widgets/message_list.dart';
import 'package:ailo_ai_chat_app/models/message.dart';
import 'package:ailo_ai_chat_app/services/gemini_service.dart';

final geminiServiceProvider = Provider<GeminiService>((ref) => GeminiService());

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Message> _messages = [];
  bool _isLoading = false;

  Future<void> _callGeminiModel() async {
    if (_controller.text.isEmpty) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final prompt = _controller.text.trim();
      final response =
          await ref.read(geminiServiceProvider).generateResponse(prompt);
      setState(() {
        _messages.add(Message(text: _controller.text, isUser: true));
        _messages.add(Message(text: response, isUser: false));
        _isLoading = false;
      });
      _controller.clear();
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      _showErrorDialog(e.toString());
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: MessageList(messages: _messages),
          ),
          MessageInput(
            controller: _controller,
            isLoading: _isLoading,
            onSend: _callGeminiModel,
          ),
        ],
      ),
    );
  }
}
