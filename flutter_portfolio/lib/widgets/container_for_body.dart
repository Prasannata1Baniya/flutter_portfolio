import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/container.dart';

Container deviceFrame(){
  return Container(
    height: 400,
    decoration: BoxDecoration(
        boxShadow:
        [
          BoxShadow(
            color: Colors.grey.shade700,
            offset: const Offset(0, 4),
            blurRadius: 20,
          ),
        ]
    ),
    child: DeviceFrame(
        isFrameVisible: true,
        orientation: Orientation.portrait,
        device: Devices.ios.iPhone13,
        screen:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const  CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/images/photo.jpg"),
              minRadius: 50, // Minimum radius
              maxRadius: 100, //Maximum radius
            ),
         const  SizedBox(height:15),
            textWhite("Flutter Developer"),
          ],
        )
    ),
  );
}