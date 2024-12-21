import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant/text_font.dart';
import 'package:flutter_portfolio/utils/container.dart';
import '../constant/google_icons.dart';

Container deviceFrame() {
  return Container(
    height: 400,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey.shade700,
        offset: const Offset(0, 4),
        blurRadius: 20,
      ),
    ]),
    child: DeviceFrame(
        isFrameVisible: true,
        orientation: Orientation.portrait,
        device: Devices.ios.iPhone13,
        screen: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/photo.jpg"),
              minRadius: 50,
              maxRadius: 100,
            ),
            const SizedBox(height: 15),
            textWhite("Flutter Developer"),
          ],
        )),
  );
}

//for Skills
Container skillsContainer(GlobalKey key,double width,double fontSize) {
  return Container(
    key:key,
    width: double.maxFinite,
    height: 500,
    color: const Color(0xff141414),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textWhite("Skills"),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.only(top: 30.0),
          height: 350,
          width: width,
          //width: 900,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.deepOrange.shade400,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  containerForSkills("Dart", "assets/skills-image/dart.png",fontSize),
                  containerForSkills(
                      "Flutter", "assets/skills-image/flutter.png",fontSize),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  containerForSkills(
                      "Firebase", "assets/skills-image/firebase.png",fontSize),
                  containerForSkills("Bloc", "assets/skills-image/bloc.png",fontSize),
                  containerForSkills(
                      "Hive Storage", "assets/skills-image/hive.png",fontSize),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

//for projects
Container projectContainer(GlobalKey key,double ht,double height) {
  return Container(
    key: key,
    width: double.maxFinite,
    height: ht,
    //height: MediaQuery.of(context).size.height,
    color: const Color(0xff282828),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      textWhite("Projects"),
      const SizedBox(height: 12),
      containerForProjects(
          "Basics Projects",
          "Basics Project to enhance my dart and flutter knowledge.\n Simple games, simple demo apps, other small projects are included.",
          "assets/projects-image/basics_project.png",height),
      containerForProjects(
          "E-Learning app",
          "E-Learning app with various features...",
          "assets/projects-image/e-learning.png",height),
      containerForProjects(
          "Advanced Projects",
          "Advanced projects using flutter hive_storage, State Management System-Bloc, REST APIs, Firebase etc.",
          "assets/projects-image/advanced_project.png",height),
    ]),
  );
}

//for main page
Column mainColumn(GlobalKey key) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    key:key,
    children: [
      const Text(
        ' Hi, I am Prasannata Baniya',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.normal, color: Colors.yellow),
      ),
      Text(
        "Flutter App Developer ",
        style: Abeezee.googleFont,
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo.shade900,
            minimumSize: const Size(120, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
        child: const Text(
          "Get in Touch",
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          PlatformIcon.icons['Android'],
          size: 30,
        ),
        Icon(
          PlatformIcon.icons['IOS'],
          size: 30,
        ),
        Icon(
          PlatformIcon.icons['Windows'],
          size: 30,
        ),
        Icon(
          PlatformIcon.icons['Desktop'],
          size: 30,
        ),
      ]),
    ],
  );
}
