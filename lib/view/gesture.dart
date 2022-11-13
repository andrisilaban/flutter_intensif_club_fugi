import 'package:flutter/material.dart';

class Gesture extends StatefulWidget {
  const Gesture({super.key});

  @override
  State<Gesture> createState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                    padding: EdgeInsets.all(10.0), child: Text('ALL')),
              ),
              const Text('Living Room'),
              const SizedBox(width: 5),
              const Text('BedRoom'),
              const SizedBox(width: 5),
              const Text('Dining Room'),
              const SizedBox(width: 5),
              const Text('Kitcehh'),
            ],
          ),
          GestureDetector(
            child: const Text(''),
          )
        ]),
      ),
    );
  }
}
