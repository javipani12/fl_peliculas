import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';


class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(30),
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.9,
        itemBuilder: ((context, index) {
          return GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://static9.depositphotos.com/1228953/1153/i/600/depositphotos_11530836-stock-photo-under-construction.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            onTap: () => Navigator.pushNamed(context, 'details'),
          );
        }),
      ),
    );
  }
}