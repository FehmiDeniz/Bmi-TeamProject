import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teamproject/homeScreenBottom.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer( 
  builder: (context, orientation, screenType) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: '',),
    );
  },
);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(right:5.w,left:5.w),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //Text ve cinsiyet için container
              height: 30.h,
              width: double.infinity,
            ),
            Container(
              //User info ve calculate button için container
              
              child: homeScreenBottom(),
              
              height: 60.h,
              width: double.infinity,
            ),
            
          ],
        ),
      ),

    );
  }
}
