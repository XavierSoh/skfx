import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/sections/services/widgets/_services_card.dart';
import 'package:folio/utils/services_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final l = AppLocalizations.of(context);

    return Column(
      children: [
        CustomSectionHeading(
          text: l.whatICanDo,
        ),
        CustomSectionSubHeading(
          text: l.mayNotBePerfect,
        ),
        Space.y!,
        CarouselSlider.builder(
          itemCount: ServicesUtils.servicesTitles(l).length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ServiceCard(
              serviceIcon: ServicesUtils.servicesIcons[i],
              serviceTitle: ServicesUtils.servicesTitles(l)[i],
              serviceDescription: ServicesUtils.servicesDescription(l)[i],
            ),
          ),
          options: CarouselOptions(
            viewportFraction: 0.65,
            height: width < 450 ? height * 0.4 : height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        )
      ],
    );
  }
}
