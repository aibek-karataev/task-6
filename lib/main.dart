import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AudioPlayer player = AudioPlayer();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Xylophone", style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0.78),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => player.play(AssetSource('1.wav')),
                child: Container(
                  color: const Color.fromRGBO(239, 68, 58, 1),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => player.play(AssetSource('2.wav')),
                child: Container(
                  color: const Color.fromRGBO(249, 151, 0, 1),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => player.play(AssetSource('3.wav')),
                child: Container(
                  color: const Color.fromRGBO(255, 233, 59, 1),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => player.play(AssetSource('4.wav')),
                child: Container(
                  color: const Color.fromRGBO(76, 176, 80, 1),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => player.play(AssetSource('5.wav')),
                child: Container(
                  color: const Color.fromRGBO(46, 150, 140, 1),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => player.play(AssetSource('6.wav')),
                child: Container(
                  color: const Color.fromRGBO(41, 150, 245, 1),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => player.play(AssetSource('7.wav')),
                child: Container(
                  color: const Color.fromRGBO(155, 40, 177, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
