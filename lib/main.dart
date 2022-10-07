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
          home: MyHomePage(
            title: '',
          ),
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
  List<bool> _isClicked = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 5.w, left: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //Text ve cinsiyet için container

              height: 40.h,

              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Lets calculate \nyour current BMI',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'You can find out whether you are \n overweight, underweight or ideal weight',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 6.h,
                          decoration: BoxDecoration(
                              color: _isClicked[0] ? Colors.blue : Colors.white,
                              borderRadius: BorderRadius.circular(10.w),
                              border: Border.all(color: Colors.grey)),
                          width: 27.w,
                          child: IconButton(
                              onPressed: (() {
                                setState(() {
                                  _isClicked = [true, false, false];
                                });
                              }),
                              icon: Text("Female"))),
                      Container(
                          decoration: BoxDecoration(
                              color: _isClicked[1] ? Colors.blue : Colors.white,
                              borderRadius: BorderRadius.circular(10.w),
                              border: Border.all(color: Colors.grey)),
                          width: 27.w,
                          height: 6.h,
                          child: IconButton(
                              onPressed: (() {
                                setState(() {
                                  _isClicked = [false, true, false];
                                });
                              }),
                              icon: Text("Male"))),
                      Container(
                          decoration: BoxDecoration(
                              color: _isClicked[2] ? Colors.blue : Colors.white,
                              borderRadius: BorderRadius.circular(10.w),
                              border: Border.all(color: Colors.grey)),
                          width: 27.w,
                          height: 6.h,
                          child: IconButton(
                              onPressed: (() {
                                setState(() {
                                  _isClicked = [false, false, true];
                                });
                              }),
                              icon: const Text("Other"))),
                    ],
                  ),
                ],
              ),
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
