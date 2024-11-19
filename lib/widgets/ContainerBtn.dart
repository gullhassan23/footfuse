
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Containerbtn extends StatelessWidget {
  Icon someIcn;
  Containerbtn({
    Key? key,
    required this.someIcn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.06,
      // width: MediaQuery.of(context).size.height * 0.13,
      width: 0.1.sw, // Get full screen width
      height: 0.05.sh,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200.r), color: Colors.green),
      child: Center(child: someIcn),
    );
  }
}
