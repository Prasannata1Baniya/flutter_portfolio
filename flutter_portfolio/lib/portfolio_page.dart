import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant/colors.dart';
import 'package:flutter_portfolio/constant/google_icons.dart';
import 'package:flutter_portfolio/constant/size.dart';
import 'package:flutter_portfolio/widgets/container_for_body.dart';
import 'package:flutter_portfolio/widgets/drawer.dart';
import 'package:flutter_portfolio/widgets/header_desktop.dart';
import 'package:flutter_portfolio/widgets/header_mobile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'utils/container.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final Uri githubUrl =Uri.parse('https://github.com/Prasannata1Baniya');
  final Uri instaUrl=Uri.parse('');
  final Uri linkedInUrl=Uri.parse('https://www.linkedin.com/in/prasannata-baniya');

  Future<void> _launchUrl(Uri url) async{
    if(await canLaunchUrl(url)){
      await launchUrl(url);
    }
    else{
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          bool isDesktop = constraints.maxWidth >= minSize;
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
                skillsContainer(isDesktop ? 900 : 350, isDesktop ? 30 : 20),

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
                          containerForContacts(GoogleIcon.icons['Github']!,()=>_launchUrl(githubUrl)),
                          containerForContacts(GoogleIcon.icons['Instagram']!,()=>_launchUrl(instaUrl)),
                          containerForContacts(GoogleIcon.icons['LinkedIn']!,()=>_launchUrl(linkedInUrl)),
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
