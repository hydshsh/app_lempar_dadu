import 'package:flutter/material.dart';
import 'package:app_lempar_dadu/custom_widgets/styled_text.dart';
import 'dart:math';

final randomizer = Random();

class RollDiceController extends StatefulWidget {
  const RollDiceController({super.key});

  @override
  State<RollDiceController> createState() {
    return _RollDiceControllerState();
  }
}

class _RollDiceControllerState extends State<RollDiceController> {
  var activeDiceImage = 1;

  void rollDice() {
    setState(() {
      activeDiceImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hola, ',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //todo Cara pake Custom Widget yang udah dibikin sendiri
              StyledText('Fadli !')
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            'Selamat Datang',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'di Aplikasi',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Text(
            'Lempar Dadu',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/dice-$activeDiceImage.png',
            width: 200,
          ),
          SizedBox(
            height: 8,
          ),
          TextButton(
            onPressed: rollDice,
            child: StyledText('- Lempar Dadu -'),
          ),
        ],
      ),
    );
  }
}
