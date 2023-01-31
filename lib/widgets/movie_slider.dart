import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 290,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Favoritas', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              )
            ),
          ),
          // Widget para tomar todo el tamaño que quede disponible
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return _MoviePoster();
              },
            ),
          )
        ],
      ),
    );
  }
}

// _ Elemento privado
class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
            // Póster
            GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage('assets/loading.gif'), 
                  image: NetworkImage('https://via.placeholder.com/300x400'),
                  width: 130,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () => Navigator.pushNamed(context, 'details'),
            ),
            SizedBox(height: 10,),
            
            // Título
            Text('El Señor de los Anillos: El Retorno del Rey', 
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
        ],
      ),
    );
  }
}