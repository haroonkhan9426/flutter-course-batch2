import 'package:flutter/material.dart';
import 'package:quizz_app/core/models/question.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  final tick = Icon(Icons.check, color: Colors.green);

  final cross = Icon(Icons.clear, color: Colors.red);

  List<Widget> tickCrossIcons = [];

  List<Question> questions = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// Question Text
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Center(
                  child: Text(
                    questions[count].question,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Spacer(),

              /// True Button
              RaisedButton(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'True',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  if (questions[count].answer == true) {
                    // Correct
                    tickCrossIcons.add(tick);
                  } else {
                    // Incorrect
                    tickCrossIcons.add(cross);
                  }
                  count++;
                  setState(() {});
                  print('Updated value of count: $count');
                },
              ),

              SizedBox(height: 10),

              /// False Button
              RaisedButton(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  if (questions[count].answer == false) {
                    // Correct
                    tickCrossIcons.add(tick);
                  } else {
                    // Incorrect
                    tickCrossIcons.add(cross);
                  }
                  count++;
                  setState(() {});
                  print('Updated value of count: $count');
                },
              ),
              SizedBox(height: 10),

              /// Row of Tick and Cross icons
              Row(
                children: tickCrossIcons,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
