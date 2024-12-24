import 'package:flutter/material.dart';

// The entry point of the app
void main() {
  runApp(
    MaterialApp(
      // MaterialApp is the root widget of the app, providing the structure and design.
      home: Scaffold(
        // Scaffold provides the layout structure, including background, app bar, and body.
        backgroundColor: Colors.red[50], // Sets a light red background color.
        appBar: AppBar(
          // AppBar is the top bar of the app, typically used for titles and actions.
          title: Center(
            // Centers the title text in the AppBar.
            child: Text('I Am Rich'), // Title displayed in the AppBar.
          ),
          backgroundColor: Colors
              .red[500], // Sets a medium red color for the AppBar background.
        ),
        body: Center(
          // Centers the child widget in the body.
          child: Image(
            // Displays an image widget.
            image: AssetImage(
                'images/diamond.png'), // Loads an image from the assets folder.
          ),
        ),
      ),
    ),
  );
}
