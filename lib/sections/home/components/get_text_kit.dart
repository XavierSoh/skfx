import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:folio/configs/app_typography.dart';

AnimatedTextKit getTextKit(BuildContext context) {
  final l = AppLocalizations.of(context);
  return AnimatedTextKit(
    animatedTexts: [
      TyperAnimatedText(
        l.flutterDev,
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
      TyperAnimatedText(
        l.kotlinDev,
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
      TyperAnimatedText(
        l.javaDev,
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
      TyperAnimatedText(
        l.googleEn,
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
      TyperAnimatedText(
        l.systemAdmin,
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
      TyperAnimatedText(
        l.opticalSupport,
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
      TyperAnimatedText(
        l.aFriend,
        speed: const Duration(milliseconds: 50),
        textStyle: AppText.b1,
      ),
    ],
    isRepeatingAnimation: true,
  );
}
