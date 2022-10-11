import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:folio/configs/space.dart';
import 'package:folio/sections/services/widgets/_services_card.dart';
import 'package:folio/utils/services_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final l = AppLocalizations.of(context);

    return Container(
      padding: Space.hf(4),
      child: Column(
        children: [
          CustomSectionHeading(
            text: l.whatICanDo,
          ),
          CustomSectionSubHeading(
            text: l.mayNotBePerfect,
          ),
          Space.y!,
          Wrap(
            spacing: width * 0.05,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: ServicesUtils.servicesIcons
                .asMap()
                .entries
                .map(
                  (e) => ServiceCard(
                    serviceIcon: ServicesUtils.servicesIcons[e.key],
                    serviceTitle: ServicesUtils.servicesTitles(l)[e.key],
                    serviceDescription: ServicesUtils.servicesDescription(l)[e.key],
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
