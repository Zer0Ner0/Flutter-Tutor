import 'dart:math'; // Importing the math library for random number generation.
import 'package:flutter/material.dart'; // Importing Flutter's material design package.

void main() {
  // The entry point of the Flutter app.
  runApp(
    MaterialApp(
      // The MaterialApp widget provides the app's overall structure and theme.
      home: BallPage(), // Sets the BallPage widget as the home screen.
    ),
  );
}

// BallPage is a StatelessWidget that builds the main structure of the app.
class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the basic structure of the app, including the AppBar and body.
      backgroundColor: Colors.blue, // Sets the background color of the app.
      appBar: AppBar(
        // AppBar displays a title bar at the top of the app.
        title: Text(
          'Ask Me Anything', // Title displayed in the AppBar.
          style: TextStyle(
            color: Colors.white, // Sets the title text color to white.
            fontWeight: FontWeight.bold, // Makes the title text bold.
          ),
        ),
        backgroundColor: Colors
            .blue[900], // Sets a darker blue color for the AppBar background.
      ),
      body:
          Ball(), // The main content of the app is handled by the Ball widget.
    );
  }
}

// Ball is a StatefulWidget that manages the state of the "magic ball."
class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

// _BallState manages the state of the Ball widget.
class _BallState extends State<Ball> {
  int ballNumber =
      1; // The variable to store the current ball image number (1-5).

  // Method to change the ball image by generating a random number.
  void changeBall() {
    setState(() {
      ballNumber =
          Random().nextInt(5) + 1; // Generates a random number between 1 and 5.
    });
  }

  @override
  Widget build(BuildContext context) {
    // The build method returns the UI for the Ball widget.
    return Center(
      // Center widget centers its child both vertically and horizontally.
      child: TextButton(
        // A clickable button that wraps the ball image.
        onPressed: () {
          changeBall(); // Changes the ball image when the button is pressed.
        },
        child: Image.asset(
            'images/ball$ballNumber.png'), // Displays the ball image based on ballNumber.
      ),
    );
  }
}
