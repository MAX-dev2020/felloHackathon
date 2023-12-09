import 'package:flutter/material.dart';

class GoalSection extends StatelessWidget {
  final String name;
  final String awards;
  final String image;

  const GoalSection({
    Key? key,
    required this.name,
    required this.awards,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(image, fit: BoxFit.cover, height: 120),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(awards),
            ),
          ],
        ),
      ),
    );
  }
}
