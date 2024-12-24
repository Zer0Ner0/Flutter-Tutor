import 'dart:math';

import 'package:flutter/material.dart';

// The entry point of the Flutter app
void main() {
  // The runApp() function starts the app and takes a widget (MaterialApp) as an argument.
  return runApp(
    MaterialApp(
      // MaterialApp is the root widget of the app.
      home: Scaffold(
        // Scaffold provides the basic structure of the app, like app bar and body.
        backgroundColor: Colors.red, // Sets the background color of the app.
        appBar: AppBar(
          // AppBar defines the header of the app.
          title: Text('Dicee'), // Sets the title of the app.
          backgroundColor: Colors.red, // Sets the app bar's background color.
        ),
        body:
            DicePage(), // The main content of the app is handled by the DicePage widget.
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDice() {
    setState(() {
      int temp = Random().nextInt(6) + 1;
      leftDiceNumber = temp;
      int temp2 = Random().nextInt(6) + 1;
      rightDiceNumber = temp2;
      print(temp - 1);
      print(temp2 - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    // The build method returns the UI of this widget.
    return Center(
      child: Row(
        // Row arranges its children in a horizontal line.
        children: <Widget>[
          Expanded(
            // Expanded makes its child widget take up available space proportionally.
            flex: 1, // Sets the proportional space this widget should occupy.
            child: TextButton(
              onPressed: () {
                // setState(() {
                //   int temp = Random().nextInt(6) + 1;
                //   leftDiceNumber = temp;
                //   int temp2 = Random().nextInt(6) + 1;
                //   rightDiceNumber = temp2;
                //   print(temp - 1);
                //   print(temp2 - 1);
                // });

                changeDice();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ), // Loads an image from the assets.
          ),
          Expanded(
            flex:
                1, // Same as above, this widget takes equal space as the first one.
            child: TextButton(
              onPressed: () {
                // setState(() {
                //   int temp = Random().nextInt(6) + 1;
                //   rightDiceNumber = temp;
                //   print(temp - 1);
                //   int temp2 = Random().nextInt(6) + 1;
                //   leftDiceNumber = temp2;
                //   print(temp2 - 1);
                // });

                changeDice();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ), // Loads an image from the assets.
          ),
        ],
      ),
    );
  }
}


// // A custom StatelessWidget that defines the structure of the dice page.
// class DicePage extends StatelessWidget {
  
//   int leftDiceNumber = 5;
  
//   @override
//   Widget build(BuildContext context) {
//     // The build method returns the UI of this widget.
//     return Center(
//       child: Row(
//         // Row arranges its children in a horizontal line.
//         children: <Widget>[
//           Expanded(
//             // Expanded makes its child widget take up available space proportionally.
//             flex: 1, // Sets the proportional space this widget should occupy.
//             child: TextButton(
//               onPressed: () {
//                 print('left button pressed'); // Add your onPressed code here!
//               },
//               child: Image.asset('images/dice$leftDiceNumber.png'),
//             ), // Loads an image from the assets.
//           ),
//           Expanded(
//             flex:
//                 1, // Same as above, this widget takes equal space as the first one.
//             child: TextButton(
//               onPressed: () {
//                 print('right button pressed'); // Add your onPressed code here!
//               },
//               child: Image.asset('images/dice1.png'),
//             ), // Loads an image from the assets.
//           ),
//         ],
//       ),
//     );
//   }
// }
