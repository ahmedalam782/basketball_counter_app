import 'package:basketball_counter_app/shared/compents/compents.dart';
import 'package:flutter/material.dart';

class Teams extends StatelessWidget {
  final String teamName;
  final  int counter;
  final   Function addOnePoint;
  final  Function addTwoPoint;
  final Function addThreePoint;

   const Teams(
      {super.key,
      required this.teamName,
        required this.addOnePoint,
        required this.addTwoPoint,
        required this.addThreePoint,

        this.counter=0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teamName,
          style: const TextStyle(
            fontSize: 35,
            color: Colors.black,
          ),
        ),
        Text(
          '$counter',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 150,
            color: Colors.black,
          ),
        ),
        DefaultButton(
          text: 'Add 1 Point',
          onPressed: () {
            addOnePoint();
          },
          width: 150,
          vertical:5,
        ),
        DefaultButton(
          text: 'Add 2 Point',
          onPressed: () {
            addTwoPoint();
          },
          width: 150,
          vertical:5,
        ),
        DefaultButton(
          text: 'Add 3 Point',
          onPressed: () {
            addThreePoint();
          },
          width: 150,
          vertical:5,
        ),
      ],
    );
  }
}
