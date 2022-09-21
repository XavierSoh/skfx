import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:folio/configs/app_typography.dart';

AnimatedTextKit getTextKit() {
  return AnimatedTextKit(
    animatedTexts: [
      TyperAnimatedText(
        ' Flutter Developer',
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
      TyperAnimatedText(
        ' Kotlin Developer',
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
      TyperAnimatedText(
        ' Java Developer',
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
      TyperAnimatedText(
        ' Google Enthusiast',
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
      TyperAnimatedText(
        ' A friend :)',
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
    ],
    isRepeatingAnimation: true,
  );
}
