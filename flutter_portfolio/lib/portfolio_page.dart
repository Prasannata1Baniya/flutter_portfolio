import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant/colors.dart';
import 'package:flutter_portfolio/constant/google_icons.dart';
import 'package:flutter_portfolio/constant/size.dart';
import 'package:flutter_portfolio/widgets/container_for_body.dart';
import 'package:flutter_portfolio/widgets/drawer.dart';
import 'package:flutter_portfolio/widgets/header_desktop.dart';
import 'package:flutter_portfolio/widgets/header_mobile.dart';
import 'utils/container.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: CustomColor.scaffold,
            endDrawer: constraints.maxWidth >= minSize
                ? null
                : const DrawerPage(),
            body: ListView(
              scrollDirection: Axis.vertical,
              children: [
                //Main Page Navigation
                if(constraints.maxWidth >= minSize)
                  const HeaderDesktop()
                else
                  HeaderMobile(
                    onLogoTab: () {},
                    menuTab: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                //For desktop
                if(constraints.maxWidth>=minSize)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    mainColumn(),
                   deviceFrame(),
                  ],
                )

               //for mobile size
                else
                  Column(
                    children: [
                      deviceFrame(),
                      mainColumn(),
                    ],
                  ),
                const SizedBox(height: 12.0),

                //Skills
                if(constraints.maxWidth>=minSize)
               skillsContainer(900,30)
                else
                  skillsContainer(350,20),

                //projects
                if(constraints.maxWidth>=minSize)
                  projectContainer(500,110)
                else
                  projectContainer(600,155),

                //Contacts
                Container(
                  width: double.maxFinite,
                  height: 200,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textWhite("Contacts"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          containerForContacts(GoogleIcon.icons['Github']!),
                          containerForContacts(GoogleIcon.icons['Instagram']!),
                          containerForContacts(GoogleIcon.icons['LinkedIn']!),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}