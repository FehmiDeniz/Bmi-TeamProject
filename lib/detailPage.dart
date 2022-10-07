import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teamproject/detailLogic.dart';

class resultPage extends StatefulWidget {
  final double result;
  const resultPage({super.key, required this.result});

  @override
  State<resultPage> createState() => _resultPageState();
}

// ignore: camel_case_types
class _resultPageState extends State<resultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 10.h),
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              const Text(
                "Your current BMI is:",
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                widget.result.toStringAsFixed(2),
                style: TextStyle(
                    color: value_color(widget.result),
                    fontSize: 44,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                commend(widget.result),
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Image.network(height:300,width:300,result_image(widget.result)),
              Spacer(),
              IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: Icon(Icons.arrow_back),
                iconSize: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}