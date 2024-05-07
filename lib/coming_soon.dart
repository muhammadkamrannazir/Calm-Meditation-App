import 'package:calm/utils/colors.dart';
import 'package:calm/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purpleDark,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: 12.w, top: MediaQuery.of(context).padding.top + 12.h),
            child: SizedBox(
              height: 30,
              width: 30,
              child: FloatingActionButton.small(
                backgroundColor: AppColors.white.withOpacity(.4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {
                  Get.back();
                },
                child: Icon(
                  Icons.close,
                  size: 20,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          Center(
            child: CustomText(
              'Coming Soon',
              fontSize: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
