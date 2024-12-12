import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant/colors.dart';
import 'package:flutter_portfolio/constant/google_icons.dart';
import 'package:flutter_portfolio/constant/size.dart';
import 'package:flutter_portfolio/widgets/container_for_body.dart';
import 'package:flutter_portfolio/widgets/drawer.dart';
import 'package:flutter_portfolio/widgets/header_desktop.dart';
import 'package:flutter_portfolio/widgets/header_mobile.dart';
import 'package:flutter_portfolio/widgets/mobile_body.dart';
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
                if(constraints.maxWidth>=minSize)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Text(' Hi, I am Prasannata Baniya',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.normal,
                              color: Colors.yellow),),
                        Text(" Flutter App Developer ",
                          style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold,
                            color: Colors.purple.shade800,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo.shade900,
                            minimumSize: const Size(120, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                          ),
                          child: const Text("Get in Touch",),
                        ),
                      ],
                    ),
                   deviceFrame(),
                  ],
                )
                else
                  mobileBody(),
                const SizedBox(height: 12.0),
                //Skills
                Container(
                  width: double.maxFinite,
                  height: 500,
                  color: const Color(0xff141414),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textWhite("Skills"),
                        const  SizedBox(height:30),
                          Container(
                            padding: const EdgeInsets.only(top:30.0),
                            height:350,
                            width: 800,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color:Colors.white,
                            ),
                            child: Column(
                              children: [
                               Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    containerForSkills("Dart","assets/skills-image/dart.png"),
                                    containerForSkills("Flutter","assets/skills-image/flutter.png"),
                                  ],
                                ),
                               const SizedBox(height:25),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    containerForSkills("Firebase","assets/skills-image/firebase.png"),
                                    containerForSkills("Bloc","assets/skills-image/bloc.png"),
                                    containerForSkills("Hive Storage","assets/skills-image/hive.png"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                    ],
                  ),
                ),

                //projects
                Container(
                  width: double.maxFinite,
                  height:500,
                  //height: MediaQuery.of(context).size.height,
                  color: const Color(0xff282828),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      textWhite("Projects"),
               const SizedBox(height:12),
               containerForProjects("Basics Projects",
                   "Basics Project to enhance my dart and flutter knowledge.\n Simple games, simple demo apps, other small projects are included.",
                   "assets/projects-image/basics_project.png"),
               containerForProjects("E-Learning app",
                   "E-Learning app with various features...",
                   "assets/projects-image/e-learning.png"),
               containerForProjects("Advanced Projects",
                   "Advanced projects using flutter hive_storage, State Management System-Bloc, REST APIs, Firebase etc.",
                   "assets/projects-image/advanced_project.png"),
                    ]
                  ),
                ),
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