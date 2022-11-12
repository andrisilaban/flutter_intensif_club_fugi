import 'package:flutter/material.dart';
import 'package:flutter_intensif_club_fugi/constant/constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title: const Text('Home'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(children: [
          const SizedBox(height: 32),
          Text(
            'Discover the most \nmodern furniture',
            style: poppins22,
          )
        ]),
      ),
    );
  }
}
