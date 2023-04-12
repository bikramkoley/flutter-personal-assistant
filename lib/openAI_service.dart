import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:personal_assistent/secrets.dart';
import 'package:personal_assistent/secrets.dart';

class OpenAIService{
  final List<Map<String,String>> messeges=[];
  Future<String> isArtPromptAPI(String prompt) async{
    try {
      final res= await http.post(Uri.parse('https://api.openai.com/v1/chat/completions'),

        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $openAIAPIKey',
        },
        body: jsonEncode({
          "model": "gpt-3.5-turbo",
          "messages": [{
            'role': 'user',
            'content': 'Does this messege want to genarate an AI picture,art or anything similar? $prompt .Simply answer with a yes or no',
          }
          ],
        }),

      );
      print(res.body);
      if(res.statusCode==200){
        print('yay');
    }
      return 'AI';
    }catch(e){
      return e.toString();

    }
  }
  Future<String> chatGPTAPI(String prompt) async{
    return'ChatGPT';
  }
  Future<String> dallEAPI(String prompt) async{
    return 'dall-E';
  }
}