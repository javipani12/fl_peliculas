import 'package:fl_peliculas/models/models.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';


class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key, required this.movies});

  final List<Result> movies;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(30),
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(
        itemCount: movies.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.9,
        itemBuilder: ((context, index) {

          final movie = movies[index];

          return GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage(movie.fullPosterImage),
                fit: BoxFit.cover,
              ),
            ),
            onTap: () => Navigator.pushNamed(context, 'details', arguments: movie),
          );
        }),
      ),
    );
  }
}