import 'package:calm/utils/colors.dart';
import 'package:calm/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pink.withOpacity(.5),
      appBar: AppBar(
        title: CustomText('Profile', fontSize: 16.sp),
        centerTitle: true,
        backgroundColor: AppColors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: CustomText('Coming Soon'),
      ),
    );
  }
}
