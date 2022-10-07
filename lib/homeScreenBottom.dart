import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'detailPage.dart';

class homeScreenBottom extends StatefulWidget {
  const homeScreenBottom({super.key});
  static int age = 0;
  static double weight =0;
  static double height =0;


  @override
  State<homeScreenBottom> createState() => homeScreenBottomState();
}

class homeScreenBottomState extends State<homeScreenBottom> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        toolbarOptions: const ToolbarOptions(
          copy: false,
          cut: false,
          paste: false,
          selectAll: false,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        decoration: InputDecoration(
            labelText: "Age",
            labelStyle: TextStyle(color: Colors.grey.withOpacity(0.5))),
        onChanged: (value) {
          setState(() {
            if (value.isNotEmpty) {
              homeScreenBottom.age = int.parse(value);
            }
          });
        },
      ),
      TextField(
        toolbarOptions: const ToolbarOptions(
          copy: false,
          cut: false,
          paste: false,
          selectAll: false,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        decoration: InputDecoration(
            labelText: "Height",
            labelStyle: TextStyle(color: Colors.grey.withOpacity(0.5))),
        onChanged: (value) {
          setState(() {
            if (value.isNotEmpty) {
              homeScreenBottom.height = double.parse(value);
            }
          });
        },
      ),
      TextField(
        toolbarOptions: const ToolbarOptions(
          copy: false,
          cut: false,
          paste: false,
          selectAll: false,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        decoration: InputDecoration(
            labelText: "Weight",
            labelStyle: TextStyle(color: Colors.grey.withOpacity(0.5))),
        onChanged: (value) {
          setState(() {
            if (value.isNotEmpty) {
              homeScreenBottom.weight = double.parse(value);
            }
          });
        },
      ),
      Container(
        height: 8.h,
        width: 100.w,
        margin: EdgeInsets.only(top: 20.h),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(4.h)),
        child: IconButton(
          onPressed: () {
            if (homeScreenBottom.age < 3 ||
                homeScreenBottom.age > 200 ||
                homeScreenBottom.height < 50 ||
                homeScreenBottom.height > 250 ||
                homeScreenBottom.weight < 30 ||
                homeScreenBottom.weight > 300) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration:const Duration(milliseconds: 500),
                backgroundColor: Theme.of(context).errorColor,
                
                  content: Container(
                    
                      alignment: Alignment.topCenter,
                      height: 40,
                      width: double.infinity,
                      child: Text("Invalid Input!"))));
            } 
            else {
              print(homeScreenBottom.age);
              print(homeScreenBottom.weight);
              print(homeScreenBottom.height);
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return resultPage(
                  result: homeScreenBottom.weight / pow(2, homeScreenBottom.height / 100),
                );
              })));
            }
          },
          icon: const Text(
            "Calculate BMI",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ))
    ]);
  }
}