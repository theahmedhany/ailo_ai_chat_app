import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  final model = GenerativeModel(
    model: 'gemini-pro',
    // model: 'gemini-exp-1206',
    apiKey: 'AIzaSyBn3ntw9eXYR792zHTmc6ZajGZTljfUAWk',
  );

  Future<String> generateResponse(String prompt) async {
    try {
      final content = [Content.text(prompt)];
      final response = await model.generateContent(content);
      return response.text ?? 'No response';
    } catch (e) {
      throw Exception('Error generating response: $e');
    }
  }
}
