import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_column.dart';

const Color tileColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

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
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  color: tileColor,
                  cardChild: GenderColumn(
                    genderIcon: FontAwesomeIcons.mars,
                    genderText: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: tileColor,
                  cardChild: GenderColumn(
                    genderIcon: FontAwesomeIcons.venus,
                    genderText: 'FEMALE',
                  ),
                ),
              )
            ],
          )),
          Expanded(
            child: ReusableCard(
              color: tileColor,
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  color: tileColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: tileColor,
                ),
              )
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
