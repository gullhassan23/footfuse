import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pedometer/pedometer.dart';
import 'package:footfuse/widgets/ContainerBtn.dart';
import 'package:footfuse/widgets/DailyAverage.dart';
import 'package:footfuse/widgets/DashCard.dart';
import 'package:footfuse/widgets/TopText.dart';
import 'package:permission_handler/permission_handler.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late Stream<StepCount> _stepCountStream;
  int steps = 0;
  double miles = 0.0;
  double calories = 0.0;
  double duration = 0.0;

  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  Future<void> requestPermission() async {
    var status = await Permission.activityRecognition.status;
    if (!status.isGranted) {
      await Permission.activityRecognition.request();
    }
    initializePedometer();
  }

  void initializePedometer() {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);
  }

  void onStepCount(StepCount event) {
    print("Steps taken: ${event.steps}");
    setState(() {
      steps = event.steps;
      calories = calculateCalories(steps);
      duration = calculateDuration(steps);
      miles = calculateMiles(steps);
    });
  }

  void onStepCountError(error) {
    print("Error in step counting: $error");
  }

  double calculateMiles(int steps) {
    return (2.2 * steps) / 5200;
  }

  double calculateDuration(int steps) {
    return steps * 1 / 1000;
  }

  double calculateCalories(int steps) {
    return steps * 0.0566;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff0C1E4E), Color(0xff224A88)],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: kToolbarHeight),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            TopTextData(
                                text: 'Today', onTap: () {}, isActive: true),
                            TopTextData(
                                text: 'Plan', onTap: () {}, isActive: false),
                            TopTextData(
                                text: 'Daily', onTap: () {}, isActive: false),
                          ],
                        ),
                        Containerbtn(
                          someIcn: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 30.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                DashCard(
                  steps: steps,
                  duration: duration,
                  miles: miles,
                  calories: calories,
                ),
                Dailyaverage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
