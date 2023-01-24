import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text('Favoritas', style: TextStyle(
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
                return Container(
                  width: 130,
                  height: 190,
                  color: Colors.deepPurple,
                  margin: const EdgeInsets.all(10),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}