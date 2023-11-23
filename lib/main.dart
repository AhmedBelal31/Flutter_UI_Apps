import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'registration_screens_ui/screens/login_screen.dart';

void main() {
  runApp(const FlutterUiApps());
}

class FlutterUiApps extends StatelessWidget {
  const FlutterUiApps({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ui Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      home: const LoginScreen(),
    );
  }
}
