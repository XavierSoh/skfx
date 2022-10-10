import 'package:flutter/material.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/iai.png';
  static const String fullterIsb = 'assets/work/udacity.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/metro/308/ffffff/youtube.png",
  ];

  static const List<String> socialLinks = [
    "https://www.facebook.com/LeDigitaliste",
    "https://twitter.com/XavierSOH6",
    "https://www.linkedin.com/in/xavier-soh-0676a41b3",
    "https://www.youtube.com/channel/UCOZtSA3kwiM9DelGhUosSkg"
  ];

  static const String resume =
      'https://docs.google.com/document/d/e/2PACX-1vQX4uENgvtR9KI2s5sRqnaUKEam5bpgLx9g6Cee83CevGERaxOmt1TgnSGMgqsPqTgvpfqXZr1bJ1Ac/pub?embedded=true';

  static const String gitHub = 'https://github.com/xaviersoh';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
