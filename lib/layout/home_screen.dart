import 'package:basketball_counter_app/shared/compents/compents.dart';
import 'package:basketball_counter_app/modules/team_design.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int countTeamA=0;

  int countTeamB=0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          'Points Counter',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Teams(
                  teamName: 'Team A',
                  counter: countTeamA,
                  addOnePoint: (){
                    setState(() {

                    });
                   countTeamA++;
                  },
                  addTwoPoint: (){
                    setState(() {

                    });
                    countTeamA+=2;
                  },
                  addThreePoint: (){
                    setState(() {

                    });
                    countTeamA+=3;
                  },
                ),
                const SizedBox(
                  height: 470,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Teams(
                  teamName: 'Team B',
                  counter: countTeamB,
                  addOnePoint: (){
                    setState(() {

                    });
                    countTeamB++;
                  },
                  addTwoPoint: (){
                    setState(() {

                    });
                    countTeamB+=2;
                  },
                  addThreePoint: (){
                    setState(() {

                    });
                    countTeamB+=3;
                  },
                ),
              ],
            ),
          ),

          DefaultButton(
            text: 'Reset', onPressed: (){
              setState(() {

              });
              countTeamA=0;
              countTeamB=0;

          },
            width: 200,
          ),
        ],
      ),
    );
  }
}
