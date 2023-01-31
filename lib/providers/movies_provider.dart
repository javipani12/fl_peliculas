import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class MoviesProvider extends ChangeNotifier{

  String _apiKey = '3981eba05b55bbaecc8dccc8e439fa39';
  String _baseUrl = 'https://api.themoviedb.org';
  String _language = 'es-ES';
  
  MoviesProvider(){
    print('MoviesProvider inicializado');

    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https( 
      _baseUrl, '/3/movie/now_playing?', {
      '_apiKey': _apiKey,
      'language': _language,
      'page': '1'
    });

    var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});

    final Map<String, dynamic> decodeData = json.decode(response.body);

    print(decodeData['dates']);
    // https://api.themoviedb.org/3/movie/now_playing?api_key=3981eba05b55bbaecc8dccc8e439fa39&language=es-ES&page=1
  }

}