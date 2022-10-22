import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/social_links.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/get_text_kit.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);
  Future<void> _launchUrl() async {
    var _url = Uri.parse('https://play.google.com/store/apps/developer?id=Xavier+SOH');
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final l = AppLocalizations.of(context);
    return Container(
      height: size.height * 1.02,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.teal, Colors.black54]),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -AppDimensions.normalize(25),
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                StaticUtils.blackWhitePhoto,
                height: AppDimensions.normalize(150),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(10),
              AppDimensions.normalize(40),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      l.heyThere,
                      style: AppText.b2!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Space.x!,
                    Image.asset(
                      StaticUtils.hi,
                      height: AppDimensions.normalize(10),
                    ),
                  ],
                ),
                Space.y!,
                Row(
                  children: [
                    Text(
                      "Xavier",
                      style: AppText.h3!.copyWith(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      "Soh",
                      style: AppText.h3b!.copyWith(
                        height: 1,
                      ),
                    ),
                  ],
                ),
                Space.y!,
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppTheme.c!.primary!,
                    ),
                    getTextKit(context)
                  ],
                ),
                Space.y!,
                const SocialLinks(),
                GestureDetector(
                    onTap: () {
                      _launchUrl();
                    },
                    child: Image.asset("assets/googleplay.png"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
