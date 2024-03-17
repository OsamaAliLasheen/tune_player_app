import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/components/tune_item.dart';

class TunePage extends StatelessWidget {
  const TunePage({super.key});

  final List<Color> tuneColors = const [
    Color(0xffFE3F39),
    Color(0xffFD972B),
    Color(0xffFDEB56),
    Color(0xff33AF57),
    Color(0xff009587),
    Color(0xff0097ED),
    Color(0xffA227AC),
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
            children: tuneColors
                .map((color) => TuneItem(
                    color: color,
                    tune: 'note${tuneColors.indexOf(color) + 1}.wav'))
                .toList()),
      ),
    );
  }
}
