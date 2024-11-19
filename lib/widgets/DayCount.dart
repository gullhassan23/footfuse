// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:footfuse/widgets/count.dart';

// ignore: must_be_immutable
class Daycount extends StatelessWidget {
  String day;
  double percentage;
  Color colors;
  Daycount({
    Key? key,
    this.day = '',
    this.percentage = 0.0,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.0.w),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        // height: 0.1.h,
        // width: 100.w,
        child: Column(
          children: [
            CircularPercentIndicator(
                radius: 20.r,
                lineWidth: 4.0,
                percent: percentage,
                circularStrokeCap: CircularStrokeCap.round,
                animation: true,
                progressColor: colors),
            SizedBox(
              height: 10.h,
            ),
            CountData(
              fontSize: 13.sp,
              titleText: day,
            )
          ],
        ),
      ),
    );
  }
}
