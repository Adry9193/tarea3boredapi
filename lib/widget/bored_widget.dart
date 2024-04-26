import 'package:flutter/material.dart';
import 'package:tarea3boredapidio/models/bored.dart'; 

class BoredActivityWidget extends StatelessWidget {
  final BoredActivity boredActivity;

  BoredActivityWidget({required this.boredActivity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Activity: ${boredActivity.activity}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 8),
          Text('Type: ${boredActivity.type}'),
          SizedBox(height: 8),
          Text('Participants: ${boredActivity.participants}'),
          SizedBox(height: 8),
          Text('Price: ${boredActivity.price}'),
          SizedBox(height: 8),
          Text('Accessibility: ${boredActivity.accessibility}'),
          SizedBox(height: 8),
          Text('Link: ${boredActivity.link}'),
        ],
      ),
    );
  }
}

