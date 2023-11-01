import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  static const MaterialColor primaryColor = MaterialColor(0xFFB5838D, {
    50: Color(0xFFF5ECED),
    100: Color(0xFFE4CDD0),
    200: Color(0xFFD2AEB2),
    300: Color(0xFFC08F94),
    400: Color(0xFFB5838D),
    500: Color(0xFFA16E7E),
    600: Color(0xFF8B5A6F),
    700: Color(0xFF75465F),
    800: Color(0xFF603F54),
    900: Color(0xFF4C3649),
  });
  //static Color primaryColor = HexColor('#B5838D');
  static Color secondaryColor = HexColor('#E5989B');
  static Color tertiaryColor = HexColor('#6D6875');

  static Color quaternaryColor = HexColor('#FFB4A2');
  static Color quinaryColor = HexColor('#FFCDB2');

  static Color whiteColor = HexColor('#FFFFFF');
  static Color blackColor = HexColor('#232D42');
  static Color loginShadwoColor = HexColor('#000000').withOpacity(.3);

  //appbarColors
  static Color appBarColor = HexColor('#FFEBEE');
  // quinaryColor.withOpacity(.1);
  //
  //static Color color = Color.fromRGBO(255, 205, 178, .9);
  static Color scaffoldColor = HexColor('#FFEBEE');

  //dividerColor
  static Color dividerColor = HexColor('#777777');
  static Color cardDividerColor = HexColor('#E9ECEF');

  //DashBoardColor
  static Color textColor = HexColor('#777777');
  static Color searchTextColor = HexColor('##3C3C43').withOpacity(.3);
  static Color searchFillColor = HexColor('#767680').withOpacity(.12);
  static Color cardTextTitleColor = HexColor('#8A92A6');
  static Color cardShadowColor = HexColor('#112692').withOpacity(.05);
  static Color gaugeColor = HexColor('#08B1BA');

  static Color searchBorderColor = Colors.grey.shade100.withOpacity(.12);

  //checkBoxColor
  static Color checkBorderColor = HexColor('#D0D5DD');

  //switchedColor
  static Color switchInactiveColor = Colors.grey.shade300;

  //chatting
  static Color chattingTextColor = tertiaryColor.withOpacity(.6);
  static Color costumermessageColor = HexColor('#007AFF');
  static Color adminMessageColor = HexColor('#E9E9EB');
}
