import 'package:flutter/material.dart';
import 'package:fl_peliculas/models/models.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier{

  final String _apiKey = '3981eba05b55bbaecc8dccc8e439fa39';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  List <Result> onDisplayMovies = [];
  
  MoviesProvider(){
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {

    var url = Uri.https(
      _baseUrl, '/3/movie/now_playing',
      {'api_key': _apiKey, 'language': _language, 'page': '1'});

    var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

    onDisplayMovies = nowPlayingResponse.results;

    notifyListeners();
    // https://api.themoviedb.org/3/movie/now_playing?api_key=3981eba05b55bbaecc8dccc8e439fa39&language=es-ES&page=1
  }

}