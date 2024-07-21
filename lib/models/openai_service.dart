import 'dart:convert';
import 'package:http/http.dart' as http;

class OpenAIService {
  final String apiKey;
  final String apiUrl = "https://api.openai.com/v1/chat/completions";

  OpenAIService({required this.apiKey});

  Future<String> getResponse(String prompt) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: jsonEncode({
        "max_tokens": 60,
        "model": "gpt-4o-mini",
        "n": 1,
        "temperature": 1,
        "top_p": 1,
        "frequency_penalty": 0,
        "presence_penalty": 0,
        "messages": [
          {
            "role": "system",
            "content": "Where are the places to visit in Istanbul?"
          }
        ]
      }),
    );

    print('HEEREERERE');
    print(response.statusCode);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['choices'][0]['text'].trim();
    } else {
      throw Exception('Failed to get response from OpenAI');
    }
  }
}
