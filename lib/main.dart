import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player_app/provider/like_provider.dart';
import 'package:video_player_app/provider/share_provider.dart';
import 'package:video_player_app/screens/home/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ShareProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LikeProvider(),
        ),
      ],
      child: const VideoApp(),
    ),
  );
}

class VideoApp extends StatelessWidget {
  const VideoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
