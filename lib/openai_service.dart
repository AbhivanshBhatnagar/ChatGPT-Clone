import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class OpenAIService {
  Future<String> isArtPromptAPI(String prompt) async {
    String secret = dotenv.env['OPEN_AI_SECRET'].toString();
    try {
      final response = await http.post(
          Uri.parse('https://api.openai.com/v1/chat/completions'),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $secret"
          },
          body: jsonEncode({
            "model": "gpt-3.5-turbo",
            "messages": [
              {
                "role": "user",
                "content":
                    "Does this message want to generate an AI Picture, art or anything similar? $prompt. Simply answer with a yes or no."
              }
            ]
          }));
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return "Error";
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> chatGPTAPI(String prompt) async {
    return "chatgpt";
  }

  Future<String> dallEAPI(String prompt) async {
    return "dalle";
  }
}
