import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExclusiveSalesContainer extends StatelessWidget {
  const ExclusiveSalesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 148.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.grey,
          ),
          child: Image.asset('assets/images/Banner.png', fit: BoxFit.fill),
        ),
      ),
    );
  }
}
