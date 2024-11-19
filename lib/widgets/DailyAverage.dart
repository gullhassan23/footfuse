import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footfuse/widgets/DayCount.dart';
import 'package:footfuse/widgets/count.dart';

class Dailyaverage extends StatelessWidget {
  const Dailyaverage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: Container(
          height: 0.3.sh,
          // width: 0.9.sw,
          decoration: BoxDecoration(
              color: Color(0xff1D3768),
              borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CountData(
                    fontSize: 20.sp,
                    titleText: "Daily Average :",
                  ),
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Daycount(
                    day: "S",
                    percentage: 0.7,
                    colors: Colors.red,
                  ),
                  Daycount(
                    day: "M",
                    percentage: 0.1,
                    colors: Colors.cyan,
                  ),
                  Daycount(
                    day: "T",
                    percentage: 0.2,
                    colors: Colors.teal,
                  ),
                  Daycount(
                    day: "W",
                    percentage: 0.3,
                    colors: Colors.amber,
                  ),
                  Daycount(
                    day: "TH",
                    percentage: 0.4,
                    colors: Colors.green,
                  ),
                  Daycount(
                    day: "F",
                    percentage: 0.5,
                    colors: Colors.indigo,
                  ),
                  Daycount(
                    day: "Sa",
                    percentage: 0.6,
                    colors: Colors.purple,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
