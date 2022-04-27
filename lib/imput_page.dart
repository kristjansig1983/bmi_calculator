 import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
//color for the 5 containers
const primaryContainersColor = Color(0xFF1d1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          //Row because more than one container
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour:primaryContainersColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: primaryContainersColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: primaryContainersColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: primaryContainersColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: primaryContainersColor,
                  ),
                ),
              ],
            ),
          ),
        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerHeight ,
        )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
//Used to change color on column when in use
   ReusableCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.00),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
