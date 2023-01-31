import 'package:flutter/material.dart';
import 'package:fl_peliculas/widgets/wigdets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _InfoPeliculas(),
              _Overview(),
              CastCarousel(),
            ]),
          ),
        ],
      ),
    );
  }
}


class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      snap: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(20.0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black38,
          child: Text(
            'Al Filo del Mañana',
            style: TextStyle(
              fontSize: 16,

            ),
          )
        ),
        background: FadeInImage(
          fit: BoxFit.cover,
          placeholder: AssetImage('assets/loading.gif'), 
          image: NetworkImage('https://i.blogs.es/12cece/al-filo-del-manana/1366_2000.jpeg')
        ),
      ),
    );
  }
}

class _InfoPeliculas extends StatelessWidget {
  const _InfoPeliculas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: double.infinity,
                height: 300,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const FadeInImage(
                                fit: BoxFit.cover,
                                width: 150,
                                height: 190,
                                placeholder: AssetImage('assets/loading.gif'),
                                image: NetworkImage('https://es.web.img3.acsta.net/pictures/14/05/05/12/46/010208.jpg'),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Título: Al Filo del Mañana',
                                  style: Theme.of(context).textTheme.headline5,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.left,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '2014',
                                  style: Theme.of(context).textTheme.subtitle1,
                                  textAlign: TextAlign.left,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, size: 20, color: Colors.amber,),
                                    Text('3,5'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        children: [
                          Text(
                            'Sinopsis',
                            style: Theme.of(context).textTheme.headline5,  
                          )
                        ],
                      ),
                    )
                  ]
                ),
              );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Text(
        'Commodo adipisicing irure ullamco est aliquip cupidatat tempor eiusmod incididunt ad ea. Qui laborum velit culpa ullamco enim ad consequat occaecat. Aliquip magna minim ea nulla do aute. Occaecat cillum nisi elit excepteur Lorem fugiat nostrud cillum consequat consequat ex.',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
        ),
    );
  }
}