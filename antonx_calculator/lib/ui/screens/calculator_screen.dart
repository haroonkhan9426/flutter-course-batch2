import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF464646),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 80),

            ///
            /// Result section
            ///
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                '4',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),

            ///
            /// Entries section
            ///
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '4 + 5 * 7',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.backspace,
                      color: Color(0xFFEb5757),
                    ),
                    onPressed: () {}),
              ],
            ),

            SizedBox(height: 10),

            /// Buttons Section
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFF333333),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Column#1
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomRoundedButton(text: 'AC'),
                          CustomRoundedButton(text: '1', isGrey: true),
                          CustomRoundedButton(text: '4', isGrey: true),
                          CustomRoundedButton(text: '7', isGrey: true),
                          CustomRoundedButton(text: '+|-'),
                        ],
                      ),
                    ),

                    /// Column#2
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomRoundedButton(text: 'AC'),
                          CustomRoundedButton(text: '1', isGrey: true),
                          CustomRoundedButton(text: '4', isGrey: true),
                          CustomRoundedButton(text: '7', isGrey: true),
                          CustomRoundedButton(text: '+|-'),
                        ],
                      ),
                    ),

                    /// Column#2
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomRoundedButton(text: 'AC'),
                          CustomRoundedButton(text: '1', isGrey: true),
                          CustomRoundedButton(text: '4', isGrey: true),
                          CustomRoundedButton(text: '7', isGrey: true),
                          CustomRoundedButton(text: '+|-'),
                        ],
                      ),
                    ),

                    /// Column#4
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomRoundedButton(text: 'AC'),
                          CustomRoundedButton(text: '1', isGrey: true),
                          CustomRoundedButton(text: '4', isGrey: true),
                          CustomDoubleButton(text: '='),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRoundedButton extends StatelessWidget {
  final bool isGrey;
  final text;
  final onPressed;

  CustomRoundedButton({this.onPressed, this.text, this.isGrey = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: isGrey ? Color(0xFF464646) : Colors.white,
        borderRadius: BorderRadius.circular(80),
      ),
      child: Center(
        child: Text(
          '$text',
          style: TextStyle(
            color: isGrey ? Colors.white : Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class CustomDoubleButton extends StatelessWidget {
  final text;
  final onPressed;

  CustomDoubleButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      height: 170,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(80),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          '$text',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
