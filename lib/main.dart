import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_app_clone/screens/home_screen.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: const Color(0xFF128C7E), primary: const Color(0xFF075E54)),
  textTheme: GoogleFonts.openSansTextTheme(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhysApp',
      theme: theme,
      home: const HomeScreen(),
    );
  }
}
