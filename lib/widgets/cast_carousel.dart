import 'package:flutter/material.dart';

class CastCarousel extends StatelessWidget {
  const CastCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _CastCard();
        },
        itemCount: 10,
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'), 
              image: NetworkImage('https://via.placeholder.com/150x300'),
              height: 140,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            'Tom Cruise', 
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}