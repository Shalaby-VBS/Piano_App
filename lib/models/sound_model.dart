import 'package:audioplayers/audioplayers.dart';

class SoundModel {
  final String whiteTabSound;
  final String blackTabSound;
  final String? character;
  final bool isContinue;

  const SoundModel({
    required this.whiteTabSound,
    required this.blackTabSound,
    this.character,
    required this.isContinue,
  });

  playWhiteTabSound() {
    final player = AudioPlayer();
    player.play(AssetSource(whiteTabSound));
  }

  playBlackTabSound() {
    final player = AudioPlayer();
    player.play(AssetSource(blackTabSound));
  }
}
