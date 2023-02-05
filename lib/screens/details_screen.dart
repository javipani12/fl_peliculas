import 'package:flutter/material.dart';
import 'package:fl_peliculas/widgets/wigdets.dart';
import 'package:fl_peliculas/models/models.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final movie;

    final String ruta = ModalRoute.of(context).toString().split("Instance of ")[1].split(")")[0];
    
    if( ruta == "'Result'" ){
      final Result movieNowPlaying = ModalRoute.of(context)!.settings.arguments as Result;
      movie = movieNowPlaying;
    } else {
      final ResultPopular moviePopular = ModalRoute.of(context)!.settings.arguments as ResultPopular;
      movie = moviePopular;
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(movie: movie,),
          SliverList(
            delegate: SliverChildListDelegate([
              _InfoPelicula(movie: movie),
              _Overview(movie: movie,),
              CastCarousel()
            ]),
          ),
        ],
      ),
    );
  }
}


class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key, required this.movie});

  final movie;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      snap: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black38,
          child: Text(
            movie.title,
            style: TextStyle(fontSize: 16),
          )
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(movie.fullPosterImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}              


class _InfoPelicula extends StatelessWidget {
  const _InfoPelicula({super.key, required this.movie});

  final movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage('assets/loading.gif'),
                  image: NetworkImage(movie.fullPosterImage),
                  height: 180,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 20),
              child: Container(
                height: 200,
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: Theme.of(context).textTheme.headline5,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Fecha: ${movie.castReleaseDate}',
                      style: Theme.of(context).textTheme.subtitle1,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5,),
                    Row(children: [
                      Icon(Icons.star, size: 25, color: Colors.amber,),
                      SizedBox( width: 5),
                      Text('${movie.voteAverage}')
                    ],),
                  ],
                ),
              ),
            ),
          ]
        ),
      ],
    );            
  }
}


class _Overview extends StatelessWidget {
  const _Overview({super.key, required this.movie});

  final movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        movie.overview,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
        ),
    );
  }
}