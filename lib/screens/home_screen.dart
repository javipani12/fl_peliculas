import 'package:flutter/material.dart';
import 'package:fl_peliculas/widgets/wigdets.dart';

class  HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            CardSwiper(),
      
            // ScrollHorizontal
            MovieSlider()
          ],
        ),
      )
    );
  }
}