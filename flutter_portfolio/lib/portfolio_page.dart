import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant/colors.dart';
import 'package:flutter_portfolio/constant/size.dart';
import 'package:flutter_portfolio/widgets/drawer.dart';
import 'package:flutter_portfolio/widgets/header_desktop.dart';
import 'package:flutter_portfolio/widgets/header_mobile.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key:scaffoldKey,
          backgroundColor:CustomColor.scaffold,
           endDrawer:constraints.maxWidth>=minSize? null:const DrawerPage(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children:[
              //Main Page Navigation
              if(constraints.maxWidth>=minSize)
                const HeaderDesktop()
              else
              HeaderMobile(
                      onLogoTab: (){},
                      menuTab: (){
                        scaffoldKey.currentState?.openEndDrawer();
                      },
                    ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                const Text(' Hi, I am Prasannata Baniya',
                                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal,
                                  color:Colors.yellow),),
                                 Text(" Flutter App Developer ",
                                style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,
                                color:Colors.purple.shade800,
                                ),),
                                ElevatedButton(onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:Colors.indigo.shade900,
                                    minimumSize: const Size(120,50),
                                  ),
                                  child:const Text("Get in Touch",),
                                ),
                              ],

                            ),
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                boxShadow:
                                  [
                                  BoxShadow(
                                    color: Colors.grey.shade700,
                                    offset:const Offset(0,4),
                                    blurRadius: 20,
                                  ),
                                  ]
                              ),
                              child: DeviceFrame(
                                isFrameVisible: true,
                                orientation: Orientation.portrait,
                                device: Devices.ios.iPhone13,
                                screen: const Text("Hello World"),
                              ),
                            ),
                          ],
                                          ),
              const SizedBox(height:12.0),
              //Skills
              Container(
                width:double.maxFinite,
                height: 500,
                color: Colors.blue,
              ),
              //projects
              Container(
                width:double.maxFinite,
                height: 500,
                color: Colors.green,
              ),

              //Contacts
              Container(
                width:double.maxFinite,
                height: 500,
                color: Colors.yellow,
              ),
          ],
          ),
        );
      }
    );
  }
}
