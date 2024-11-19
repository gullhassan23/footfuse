import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footfuse/Screens/Animation.dart';
import 'package:footfuse/Screens/Dashboard.dart';

class BottomW extends StatefulWidget {
  @override
  State<BottomW> createState() => _BottomWState();
}

class _BottomWState extends State<BottomW> {
  int current = 0;
  final tabs = [
    Dashboard(),
    AnimationQ(),
    Dashboard(),
    Dashboard(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff224A8B),
        type: BottomNavigationBarType.fixed,
        currentIndex: current,
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.sp,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.auto_graph_sharp,
              size: 30.sp,
            ),
            label: "report",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.health_and_safety_sharp,
              size: 30.sp,
            ),
            label: "health",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30.sp,
            ),
            label: "settings",
          ),
        ],
        onTap: (index) {
          setState(() {
            current = index;
          });
        },
      ),
      body: tabs[current],
    );
  }
}
