import 'package:flutter/material.dart';
import 'package:folio/configs/app.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/provider/drawer_provider.dart';
import 'package:folio/provider/scroll_provider.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/utils/navbar_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/arrow_on_top.dart';
import 'package:folio/widget/navbar_logo.dart';
import 'package:provider/provider.dart';

part 'widgets/_body.dart';
part 'widgets/_mobile_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: const [
            _Body(),
            ArrowOnTop(),
            /* Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const NavBarTablet()
                : const NavbarDesktop(),*/
          ],
        ),
      ),
    );
  }
}
