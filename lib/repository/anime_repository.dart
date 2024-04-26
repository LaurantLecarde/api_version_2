import 'dart:convert';
import 'package:api_version_2/manager/api_service.dart';
import 'package:api_version_2/model/anime_response.dart';
import 'package:http/http.dart'as http;

class AnimeRepository  {
  final _api = ApiService(buildDioClient("https://api.jikan.moe/"));


  Future<List<Data>> getAnimes() async {
    try {
      final response = await _api.getAnimes();
      return response.data ?? [];
    } catch (e) {
      return [];
    }
  }

  Future<List<Data>> getTopAnimes() async {
    try {
      final response = await _api.getTopAnimes();
      return response.data ?? [];
    } catch (e) {
      return [];
    }
  }

  Future<List<Data>> getRandomAnimes() async {
    try {
      final response = await _api.getRandomAnimes();
      return response.data ?? [];
    } catch (e) {
      return [];
    }
  }

  Future<List<Data>> searchAnime(String query) async {
    final myResponse = await http.get(Uri.parse('https://api.jikan.moe/v4/search/anime?q=$query'));
    try{
      final response = await _api.searchAnimes(query);
      return response.data ?? [];
    }catch(e){
      print('API Error: ${myResponse.statusCode}');
      print('API Response: ${myResponse.body}');
      throw Exception('Failed to load data');
      return [];
    }
  }

}

// https://api.jikan.moe/v4/anime
// https://api.jikan.moe/v4/top/anime
