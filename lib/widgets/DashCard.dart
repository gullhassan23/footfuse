import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DashCard extends StatelessWidget {
  final int steps;
  final double miles;
  final double calories;
  final double duration;

  const DashCard({
    Key? key,
    required this.steps,
    required this.miles,
    required this.calories,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      color: Color(0xff1D3768),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Steps: $steps",
                    style:
                        GoogleFonts.aBeeZee(fontSize: 24, color: Colors.white)),
                Text("Miles: ${miles.toStringAsFixed(2)}",
                    style:
                        GoogleFonts.aBeeZee(fontSize: 24, color: Colors.white)),
              ],
            ),
            SizedBox(height: 20),
            LinearPercentIndicator(
              lineHeight: 14.h,
              percent: (steps / 10000).clamp(0, 1),
              backgroundColor: Colors.grey,
              progressColor: Colors.green,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Calories: ${calories.toStringAsFixed(2)}",
                    style:
                        GoogleFonts.aBeeZee(fontSize: 18, color: Colors.white)),
                Text("Duration: ${duration.toStringAsFixed(2)} mins",
                    style:
                        GoogleFonts.aBeeZee(fontSize: 18, color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
