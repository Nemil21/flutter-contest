   import 'dart:convert';
  import 'package:http/http.dart' as http;
import 'package:workshopapp/model.dart';
  
  Future<List<Character>> fetchcharacters() async {
    final response = await http.get(Uri.parse('https://api.disneyapi.dev/character'));
  
    if (response.statusCode == 200) {
      List<Character> characterList = [];
      List<dynamic> data = json.decode(response.body)['data'];
      data.forEach((character) {
        characterList.add(Character.fromJson(character));
      });
      return characterList;
   } else {
      throw Exception('Failed to load Characters');
    }
  }