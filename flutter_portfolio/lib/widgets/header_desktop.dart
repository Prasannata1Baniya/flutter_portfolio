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
      padding:const  EdgeInsets.only(left: 12.0,right: 12.0),
      height: 60,
      width:double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        /*gradient: LinearGradient(
            colors: [
              Colors.transparent,
              CustomColor.bglight1,
            ]),*/
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          LogoPage(onTap: (){}),
          const Spacer(),
          for(int i=0;i<navigationTitle.length;i++)
            TextButton(onPressed: (){},
              child:Text(navigationTitle[i],
                style: TextStyle(color: CustomColor.textFieldBg,fontWeight: FontWeight.w700,
                fontSize: 20),),
            ),
        ],
      ),
    );
  }
}