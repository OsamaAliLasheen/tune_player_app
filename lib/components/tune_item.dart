import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.color, required this.tune});

  final Color color;
  final String tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height, // 7.89,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource('note2.wav'));
          },
          child: null,
        ),
      ),
    );
  }
}
