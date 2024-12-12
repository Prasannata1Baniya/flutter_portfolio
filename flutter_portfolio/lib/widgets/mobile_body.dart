import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/container_for_body.dart';

Column mobileBody(){
  return Column(
    children: [
      deviceFrame(),
     const  SizedBox(height:10),
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
        ),
        child: const Text("Get in Touch",),
      ),
    ],
  );
}