import 'package:flutter/material.dart';
import '/models/sound_model.dart';

class PianoTab extends StatelessWidget {
  final SoundModel soundModel;
  const PianoTab({
    super.key,
    required this.soundModel,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            GestureDetector(
              onTap: () {
                soundModel.playWhiteTabSound();
              },
              child: Container(
                color: Colors.white,
                child: soundModel.character != null
                    ? Container(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Text(
                            soundModel.character!,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
            Positioned(
              top: -35,
              child: soundModel.isContinue == true
                  ? GestureDetector(
                      onTap: () {
                        soundModel.playBlackTabSound();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            )
          ],
        ),
      ),
    );
  }
}
