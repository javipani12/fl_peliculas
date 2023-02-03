import 'package:fl_peliculas/providers/movies_provider.dart';
import 'package:fl_peliculas/providers/movies_provider_popular.dart';
import 'package:flutter/material.dart';
import 'package:fl_peliculas/widgets/wigdets.dart';
import 'package:provider/provider.dart';

class  HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);
    final moviesProviderPopular = Provider.of<MoviesProviderPopular>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Damflix'),
        actions: [
          IconButton(
            onPressed: () {
              
            }, 
            icon: const Icon(Icons.search_off_outlined)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CardSwiper
            CardSwiper(movies: moviesProvider.onDisplayMovies,),
      
            // ScrollHorizontal
            MovieSlider(movies: moviesProviderPopular.onDisplayMovies),
          ],
        ),
      )
    );
  }
}