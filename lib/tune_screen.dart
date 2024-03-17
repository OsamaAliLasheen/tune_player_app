import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/components/tune_item.dart';

class TunePage extends StatelessWidget {
  const TunePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff243139),
          centerTitle: true,
          title: const Text(
            'Flutter Tune',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
        body: const Column(
          children: [
            TuneItem(color: Color(0xffFE3F39), tune: 'note1.wav'),
            TuneItem(color: Colors.orange, tune: 'note2.wav'),
            TuneItem(color: Colors.yellow, tune: 'note3.wav'),
            TuneItem(color: Colors.green, tune: 'note4.wav'),
            TuneItem(color: Color(0xff009587), tune: 'note5.wav'),
            TuneItem(color: Colors.blue, tune: 'note6.wav'),
            TuneItem(color: Colors.purple, tune: 'note7.wav'),
          ],
        ),
      ),
    );
  }
}
