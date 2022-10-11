import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/app_dimensions.dart';
import 'package:folio/configs/app_theme.dart';
import 'package:folio/configs/space.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/sections/services/widgets/_services_card_back.dart';
import 'package:folio/utils/utils.dart';
import 'package:provider/provider.dart';

class ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;

  const ServiceCard({
    Key? key,
    required this.serviceIcon,
    required this.serviceTitle,
    required this.serviceDescription,
  }) : super(key: key);

  @override
  ServiceCardState createState() => ServiceCardState();
}

class ServiceCardState extends State<ServiceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        cardKey.currentState!.toggleCard();
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: Container(
          width: AppDimensions.normalize(100),
          height: AppDimensions.normalize(80),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color: appProvider.isDark ? Colors.grey[900] : Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: AppTheme.c!.primary!.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: ServiceCardBackWidget(
            serviceDesc: widget.serviceDescription,
            serviceTitle: widget.serviceTitle,
          ),
        ),
        front: Container(
          width: AppDimensions.normalize(100),
          height: AppDimensions.normalize(80),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color: appProvider.isDark ? Colors.grey[900] : Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: AppTheme.c!.primary!.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.serviceIcon,
                height: AppDimensions.normalize(30),
                color: widget.serviceIcon.contains(StaticUtils.openSource) && !appProvider.isDark
                    ? Colors.black
                    : null,
              ),
              Space.y1!,
              Text(
                widget.serviceTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
