import 'package:flutter/material.dart';
import 'package:get/get.dart';

const String userAvatar =
    'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg';

const String backDrop =
    'https://cdn.eizo.de/typo3temp/fl_realurl_image/office-monitors-at-a-glance-27e.jpg';

const Color kPrimaryColor = Color(0xff373D70);
const Color kAccentColor = Color(0xffDA00FF);
const Color kBackgroundColor = Color(0xff373D70);
const Color kBackgroundDarkColor = Color(0xff191E47);
const Color kUnSelectedColor = Color(0xff757DB5);
const Color kAuthGreyColor=Color(0xffF6F6F6);
const Color kPurpleColor=Color(0xffB86AD6);
const Color kBlueColor=Colors.blueAccent;


double sizeFromHeight(double fraction, {bool removeAppBarSize = true}){
  MediaQueryData mediaQuery = MediaQuery.of(Get.context!);
  fraction = (removeAppBarSize
          ? (mediaQuery.size.height - kToolbarHeight - mediaQuery.padding.top)
          : mediaQuery.size.height) /
      (fraction == 0 ? 1 : fraction);
  return fraction;
}

double sizeFromWidth(double fraction) {
  fraction =
      MediaQuery.of(Get.context!).size.width / (fraction == 0 ? 1 : fraction);
  return fraction;
}
