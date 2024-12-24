import 'package:flutter/material.dart';

// Entry point of the app
void main() {
  runApp(MyApp()); // Starts the app by running the MyApp widget.
}

// A custom StatelessWidget representing the app.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp is the root widget of the app.
      home: Scaffold(
        // Scaffold provides the basic structure of the app.
        backgroundColor:
            Colors.teal, // Sets the background color of the screen.
        body: SafeArea(
          // SafeArea ensures content is within safe boundaries (avoids notches or status bar areas).
          child: Column(
            // Column arranges widgets vertically.
            mainAxisAlignment:
                MainAxisAlignment.center, // Centers content vertically.
            children: <Widget>[
              CircleAvatar(
                // Creates a circular profile image.
                radius: 50.0, // Sets the radius of the circle.
                backgroundImage: AssetImage(
                    'images/amir.jpg'), // Loads an image from assets.
              ),
              Text(
                'Amir Mazlan', // Name displayed below the avatar.
                style: TextStyle(
                  fontFamily: 'Tangerine', // Sets a custom font for the text.
                  fontSize: 40.0, // Sets font size.
                  color: Colors.white, // Sets text color.
                  fontWeight: FontWeight.bold, // Makes the text bold.
                ),
              ),
              Text(
                'FLUTTER DEVELOPER', // Job title displayed below the name.
                style: TextStyle(
                  fontSize: 20.0, // Smaller font size than the name.
                  fontFamily: 'Source-San', // Custom font for the job title.
                  color: Colors.teal.shade100, // Light teal color for text.
                  fontWeight: FontWeight.bold, // Makes the text bold.
                  letterSpacing: 0.0, // Adjusts spacing between letters.
                ),
              ),
              SizedBox(
                // Adds some space with specific dimensions.
                height: 20.0, // Vertical spacing.
                width: 150.0, // Horizontal spacing.
                child: Divider(
                  // A horizontal line for separation.
                  color:
                      Colors.teal.shade100, // Light teal color for the divider.
                ),
              ),
              Card(
                // Creates a material design card.
                margin: EdgeInsets.symmetric(
                  vertical: 10.0, // Adds vertical margin around the card.
                  horizontal: 25.0, // Adds horizontal margin around the card.
                ),
                child: ListTile(
                  // ListTile is a standard row for icons and text.
                  leading: Icon(
                    Icons.phone, // Displays a phone icon.
                    color:
                        Colors.teal.shade900, // Dark teal color for the icon.
                  ),
                  title: Text(
                    '+60 11 1628 3997', // Phone number displayed as text.
                    style: TextStyle(
                      fontFamily: 'Fresca', // Sets a custom font.
                      fontSize: 20.0, // Sets font size.
                      color:
                          Colors.teal.shade900, // Dark teal color for the text.
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0, // Adds vertical margin around the card.
                  horizontal: 25.0, // Adds horizontal margin around the card.
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email, // Displays an email icon.
                    color:
                        Colors.teal.shade900, // Dark teal color for the icon.
                  ),
                  title: Text(
                    'amirmz48@gmail.com', // Email address displayed as text.
                    style: TextStyle(
                      fontFamily: 'Fresca', // Sets a custom font.
                      fontSize: 20.0, // Sets font size.
                      color:
                          Colors.teal.shade900, // Dark teal color for the text.
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
