import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/Models/tune_model.dart';
import 'package:music_notes_player_app_setup/components/tune_item.dart';

class TunePage extends StatelessWidget {
  const TunePage({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(
      tune: 'note1.wav',
      color: Color(0xffFE3F39),
    ),
    TuneModel(
      tune: 'note2.wav',
      color: Color(0xffFD972B),
    ),
    TuneModel(
      tune: 'note3.wav',
      color: Color(0xffFDEB56),
    ),
    TuneModel(
      tune: 'note4.wav',
      color: Color(0xff33AF57),
    ),
    TuneModel(
      tune: 'note5.wav',
      color: Color(0xff009587),
    ),
    TuneModel(
      tune: 'note6.wav',
      color: Color(0xff0097ED),
    ),
    TuneModel(
      tune: 'note7.wav',
      color: Color(0xffA227AC),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff243139),
          centerTitle: true,
          title: const Text(
            'Flutter Tune',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
        body: Column(
            children: tunes
                .map((tunes) => TuneItem(color: tunes.color, tune: tunes.tune))
                .toList()),
      ),
    );
  }
}
