import 'package:flutter/material.dart';

// The entry point of the app
void main() {
  runApp(
    MaterialApp(
      // MaterialApp is the root widget of the app, providing structure and Material Design styling.
      home: Scaffold(
        // Scaffold provides the layout structure for the app.
        backgroundColor:
            Colors.green[100], // Sets a light green background color.
        appBar: AppBar(
          // AppBar is the top bar of the app, used to display the title.
          title: Center(
            // Centers the title text in the AppBar.
            child: Text('I Am Poor'), // The title text displayed in the AppBar.
          ),
          backgroundColor: Colors
              .green[900], // Sets a dark green background color for the AppBar.
        ),
        body: Center(
          // Centers its child widget both vertically and horizontally.
          child: Image(
            // Image widget is used to display an image.
            image: AssetImage(
                'images/420.jpg'), // Loads an image from the app's assets folder.
          ),
        ),
      ),
    ),
  );
}
