import'package:flutter/material.dart';
import 'package:flutter_portfolio/constant/colors.dart';
import 'package:flutter_portfolio/constant/nav_title.dart';
import 'package:flutter_portfolio/widgets/pb.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
      height: 60,
      width:double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.transparent,
              CustomColor.bglight1,
            ]),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          LogoPage(onTap: (){}),
          const Spacer(),
          for(int i=0;i<navigationTitle.length;i++)
            TextButton(onPressed: (){},
              child:Text(navigationTitle[i]),
            ),
        ],
      ),
    );
  }
}
