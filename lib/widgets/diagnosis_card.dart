import 'package:flutter/material.dart';

class DiagnosisCard extends StatelessWidget {
  final String title;
  final String description;
  final Function onTap;

  const DiagnosisCard({required this.title, required this.description, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
