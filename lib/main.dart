import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'flutter_pet_adoption_ui/screens/pet_home_screen.dart';


void main() {
  runApp(const FlutterUiApps());
}

class FlutterUiApps extends StatelessWidget {
  const FlutterUiApps({super.key});
  // For Login UI
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Ui Apps',
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeData.dark().copyWith(
  //         textTheme:
  //             GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
  //     home: const LoginScreen(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ui Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.almaraiTextTheme(),
      ),
      home: const PetHomeScreen(),
    );
  }
}
