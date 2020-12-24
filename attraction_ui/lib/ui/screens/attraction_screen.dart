import 'package:flutter/material.dart';

class AttractionUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          /// Cover image
          Image(
            image: AssetImage('assets/images/fairymeadowsPakistan.jpg'),
            height: 220,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),

          /// titles/Subtitle section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// title/sub section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fairy Meadows',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'A fairy land',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Spacer(),

                /// Rating section
                Icon(
                  Icons.star_rate,
                  color: Colors.red,
                  size: 30,
                ),
                Text(
                  '41',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),

          /// butttons section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(Icons.phone, 'CALL'),
                CustomButton(Icons.navigation, 'ROUTE'),
                CustomButton(Icons.share, 'SHARE'),
              ],
            ),
          ),

          /// Detailed Text Section
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Text(
              "Fairy meadows is simply dummy text of the printing and typesetting industry. Lorem Ipsumhas been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 15),
            ),
          )
        ],
      ),
    ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final text;

  CustomButton(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 30,
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 18, color: Colors.blue, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
