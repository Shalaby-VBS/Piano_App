import 'package:flutter/material.dart';
import '/widgets/piano_tab.dart';
import '/models/sound_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<SoundModel> soundList = const [
    SoundModel(
      whiteTabSound: 'note1.wav',
      blackTabSound: 'note7.wav',
      character: 'S',
      isContinue: false,
    ),
    SoundModel(
      whiteTabSound: 'note2.wav',
      blackTabSound: 'note6.wav',
      character: 'H',
      isContinue: true,
    ),
    SoundModel(
      whiteTabSound: 'note3.wav',
      blackTabSound: 'note5.wav',
      character: 'A',
      isContinue: true,
    ),
    SoundModel(
      whiteTabSound: 'note4.wav',
      blackTabSound: 'note7.wav',
      character: 'L',
      isContinue: true,
    ),
    SoundModel(
      whiteTabSound: 'note5.wav',
      blackTabSound: 'note3.wav',
      character: 'A',
      isContinue: true,
    ),
    SoundModel(
      whiteTabSound: 'note6.wav',
      blackTabSound: 'note2.wav',
      character: 'B',
      isContinue: true,
    ),
    SoundModel(
      whiteTabSound: 'note7.wav',
      blackTabSound: 'note1.wav',
      character: 'Y',
      isContinue: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: soundList.map((item) => PianoTab(soundModel: item)).toList(),
      ),
    );
  }
}
