import 'package:bmi_calculator/widgets/app_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFffffff),
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: const Color(0xFFffffff),
            titleTextStyle: const TextStyle(
              fontSize: 18,
              color: Color(0xFF2b2b2b),
              fontWeight: FontWeight.bold,
            ),
          ),
          sliderTheme: SliderThemeData(
            activeTrackColor:
                const Color(0xFF2b2b2b), // Color of the active track
            inactiveTrackColor:
                const Color(0xFFffffff), // Color of the inactive track
            thumbColor: const Color(0xFF2b2b2b), // Color of the thumb
            overlayColor: const Color(0xFF2b2b2b).withOpacity(
                0.2), // Color of the overlay around the thumb when pressed
            trackHeight: 4.0, // Height of the track
            thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 12.0), // Customize thumb shape/size
            trackShape:
                const RoundedRectSliderTrackShape(), // Customize track shape
          ),
          textTheme: GoogleFonts.poppinsTextTheme(),
          cardTheme: const CardTheme().copyWith(
            color: const Color(0xFFf0f0f0),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(12.0), // Set the border radius here
            ),
          ),
          toggleButtonsTheme: ToggleButtonsThemeData(
            color: const Color(
                0xFF2b2b2b), // Color of the text and icons when not selected
            selectedColor: const Color(
                0xFFffffff), // Color of the text and icons when selected
            fillColor: const Color(
                0xFF2b2b2b), // Background color when a button is selected
            splashColor:
                const Color(0xFFdafd87).withOpacity(0.2), // Splash color on tap
            hoverColor: const Color(0xFFdafd87)
                .withOpacity(0.04), // Hover color when hovered over (web)
            borderRadius: BorderRadius.circular(
                100.0), // Border radius for the toggle buttons
            borderColor:
                const Color(0xFFdbdbdb), // Border color when not selected
            selectedBorderColor:
                const Color(0xFFdbdbdb), // Border color when selected
            borderWidth: 2.0, // Width of the border
            constraints: const BoxConstraints(
              minHeight: 20.0,
              minWidth: 40.0, // Minimum width for each toggle button
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2b2b2b),
              foregroundColor: const Color(0xFFffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(
              backgroundColor: const Color(0xFF2b2b2b),
              foregroundColor: const Color(0xFFffffff),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        darkTheme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF1d1b20),
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: const Color(0xFF1d1b20),
            titleTextStyle: const TextStyle(
              fontSize: 18,
              color: Color(0xFFffffff),
              fontWeight: FontWeight.bold,
            ),
          ),
          sliderTheme: SliderThemeData(
            activeTrackColor:
                const Color(0xFF3c3f34), // Color of the active track
            inactiveTrackColor:
                const Color(0xFF1f1d22), // Color of the inactive track
            thumbColor: const Color(0xFFdafd87), // Color of the thumb
            overlayColor: const Color(0xFFdafd87).withOpacity(
                0.2), // Color of the overlay around the thumb when pressed
            trackHeight: 4.0, // Height of the track
            thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 12.0), // Customize thumb shape/size
            trackShape:
                const RoundedRectSliderTrackShape(), // Customize track shape
          ),
          textTheme: GoogleFonts.poppinsTextTheme().apply(
            bodyColor: Colors.white, // Set the text color for body text
            displayColor:
                Colors.white, // Set the text color for headlines and large text
          ),
          cardTheme: const CardTheme().copyWith(
            color: const Color(0xFF2b2b2b),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(12.0), // Set the border radius here
            ),
          ),
          toggleButtonsTheme: ToggleButtonsThemeData(
            color: const Color(
                0xFFc0c0c0), // Color of the text and icons when not selected
            selectedColor: const Color(
                0xFF2b2b2b), // Color of the text and icons when selected
            fillColor: const Color(
                0xFFdafd87), // Background color when a button is selected
            splashColor:
                const Color(0xFFdafd87).withOpacity(0.2), // Splash color on tap
            hoverColor: const Color(0xFFdafd87)
                .withOpacity(0.04), // Hover color when hovered over (web)
            borderRadius: BorderRadius.circular(
                100.0), // Border radius for the toggle buttons
            borderColor:
                const Color(0xFF393939), // Border color when not selected
            selectedBorderColor:
                const Color(0xFF393939), // Border color when selected
            borderWidth: 2.0, // Width of the border
            constraints: const BoxConstraints(
              minHeight: 20.0,
              minWidth: 40.0, // Minimum width for each toggle button
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFdafd87),
              foregroundColor: const Color(0xFF2b2b2b),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(
              backgroundColor: const Color(0xFFdafd87),
              foregroundColor: const Color(0xFF2b2b2b),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          iconTheme: const IconThemeData(
            color: Color(0xFFdafd87),
          ),
        ),
        home: const MainScreen()),
  );
}
