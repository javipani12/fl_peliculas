import 'package:flutter/material.dart';
import 'package:fl_peliculas/widgets/wigdets.dart';
import 'package:fl_peliculas/models/models.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final Result movie = ModalRoute.of(context)!.settings.arguments as Result;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _InfoPelicula(),
              _Overview(),
              CastCarousel()
            ]),
          ),
        ],
      ),
    );
  }
}


              

class _InfoPelicula extends StatelessWidget {
  const _InfoPelicula({super.key});

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
                            image: NetworkImage('https://es.web.img3.acsta.net/pictures/14/05/05/12/46/010208.jpg'),
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
                                'Al Filo del mañana',
                                style: Theme.of(context).textTheme.headline5,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Año: 2014',
                                style: Theme.of(context).textTheme.subtitle1,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5,),
                              Row(children: [
                                Icon(Icons.star, size: 25, color: Colors.amber,),
                                SizedBox( width: 5),
                                Text('5')
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
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black38,
          child: Text(
            'Al Filo del mañana',
            style: TextStyle(fontSize: 16),
          )
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://i.blogs.es/12cece/al-filo-del-manana/1366_2000.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        'Fugiat occaecat nulla reprehenderit quis consequat nisi nisi incididunt esse aliqua adipisicing non eiusmod. Ullamco et elit culpa do sunt ad labore voluptate Lorem. Id incididunt labore dolor irure do deserunt fugiat.',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
        ),
    );
  }
}