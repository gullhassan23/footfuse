import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:footfuse/widgets/count.dart';

// ignore: must_be_immutable
class Imagecontainer extends StatelessWidget {
  String imagePath;
  String number;
  String textTile;
  Imagecontainer({
    Key? key,
    this.imagePath = '',
    this.number = '',
    this.textTile = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.2.sh,
      width: 0.29.sw,
      child: Column(
        children: [
          Container(
            height: 30.h,
            width: 30.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      imagePath,
                    ),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 8.h, left: 8.w, right: 8.w, bottom: 8.h),
            child: CountData(
              fontSize: 16.sp,
              titleText: number,
            ),
          ),
          CountData(
            fontSize: 12.sp,
            titleText: textTile,
          )
        ],
      ),
    );
  }
}
