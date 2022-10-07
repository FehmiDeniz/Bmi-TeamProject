// ignore: camel_case_types

import 'package:flutter/material.dart';

String commend(double bmi) {
  if (bmi >= 30) {
    return ("Your bmi is within the obese range");
  } else if (bmi >= 25) {
    return ("Your bmi is within the overweight range");
  } else if (bmi >= 19) {
    return ("Your bmi is within the normal or Healthy Weight range.");
  } else {
    return ("Your bmi is within the underweight range.");
  }
}

// ignore: non_constant_identifier_names
Color value_color(double bmi) {
  if (bmi > 30) {
    return Colors.red;
  } else if (bmi > 25) {
    return Colors.orange;
  } else if (bmi > 19) {
    return Colors.green;
  } else {
    return Colors.orange;
  }
}


// ignore: non_constant_identifier_names
String result_image(double bmi){
  String bad_pic ="https://previews.123rf.com/images/sebastiangauert/sebastiangauert1408/sebastiangauert140800104/30518850-serious-male-doctor-giving-thumbs-down-sign-showing-failed-operation-result-isolated-on-white-backgr.jpg";
  String good_pic = "https://previews.123rf.com/images/marcomayer/marcomayer1201/marcomayer120100238/11800159-doctor-with-thumbs-up.jpg";
  if (bmi>30){
    return (bad_pic);
  }
  else if (bmi>25)
  return (bad_pic);
  else if (bmi>19)
  return (good_pic);
  else {
    return bad_pic;
  }
}