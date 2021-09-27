
import 'package:flutter/material.dart';


const KAppbarimage =  Image(
  height: 50.0,
  width: 150.0,
  image: AssetImage('images/Logo_humteam_white.png' ),
);


const kBoxDecorationgradient =  BoxDecoration(
    gradient: LinearGradient(colors: [Colors.orange , Colors.red],
      begin: FractionalOffset(0.0,0.0),
      end: FractionalOffset(1.0,0.0),
      stops: [0.0 , 1.0],
      tileMode: TileMode.clamp,
    ),
);




const kPrimaryColor = Color(0xFFFF3B1D);
const kDarkBlackColor = Color(0xFF191919);
const kBgColor = Color(0xFFE7E7E7);
const kBodyTextColor = Color(0xFF666666);

const kDefaultPadding = 20.0;
const kMaxWidth = 1232.0;
const kDefaultDuration = Duration(milliseconds: 250);
