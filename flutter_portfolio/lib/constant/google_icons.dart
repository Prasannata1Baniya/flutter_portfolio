import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

//For Skills
/*class GoogleIconI{
  static Map<String , IconData> icons={
    'Flutter':MdiIcons.flutter,
  };
}
*/


//For Contacts
class GoogleIcon{
  static Map<String,IconData> icons={
    'Github': MdiIcons.github, // GitHub icon from Material Design Icons
    'Instagram': MdiIcons.instagram, // Instagram icon
    'LinkedIn': MdiIcons.linkedin, // LinkedIn icon
  };
  static IconData getIcon(String iconName){
    return icons[iconName] ?? Icons.error;
  }
}
