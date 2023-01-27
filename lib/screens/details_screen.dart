import 'package:flutter/material.dart';

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
              Container(
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
                          child: Container(
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
                                    Text('Puntuación: '),
                                    FadeInImage(
                                      width: 25,
                                      height: 25,
                                      placeholder: AssetImage('assets/loading.gif'), 
                                      image: AssetImage('assets/pngwing.com.png'),
                                    ),
                                    FadeInImage(
                                      width: 25,
                                      height: 25,
                                      placeholder: AssetImage('assets/loading.gif'), 
                                      image: AssetImage('assets/pngwing.com.png'),
                                    ),
                                    FadeInImage(
                                      width: 25,
                                      height: 25,
                                      placeholder: AssetImage('assets/loading.gif'), 
                                      image: AssetImage('assets/pngwing.com.png'),
                                    ),
                                    FadeInImage(
                                      width: 25,
                                      height: 25,
                                      placeholder: AssetImage('assets/loading.gif'), 
                                      image: AssetImage('assets/pngwing.com.png'),
                                    ),
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
              )
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
        titlePadding: const EdgeInsets.all(0),
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