import 'package:flutter/material.dart';

Text textBlack(String data){
  return Text(data,style:const TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
  );
}
Text textWhite(String data){
  return Text(data,style:const TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
  );
}
Container containerForSkills(String name, String imageData){
  return Container(
    decoration: BoxDecoration(
      borderRadius:BorderRadius.circular(25),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textBlack(name),
        Image.asset(imageData,height: 100,),
      ],
    ),
  );
}

Container containerForContacts(IconData? iconData){
  return Container(
    decoration: BoxDecoration(
      borderRadius:BorderRadius.circular(25),
    ),
    child: Column(
      children: [
        textBlack("Contacts"),
        Icon(iconData ?? Icons.error,size: 70,color: Colors.white,),
      ],
    ),
  );
}

Padding containerForProjects(String title,String subTitle,String image){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      padding:const EdgeInsets.only(left:5.0),
      height:110,
      width:500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color:Colors.white,
        ),
      child:Row(
        children:[
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              image,
              height: 80,  // Height of the image
              width: 80,   // Width of the image
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: ListTile(
              title:textBlack(title),
              subtitle: Text(subTitle,
              style: const TextStyle(color:Colors.black),),
            ),
          )
        ],
      )
    ),
  );
}