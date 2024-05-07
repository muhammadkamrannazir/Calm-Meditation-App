import 'package:calm/utils/colors.dart';
import 'package:calm/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSettingFeature extends StatelessWidget {
  String icon;
  String title;
  bool? value;
  void Function(bool)? onChanged;
  bool? showBottomChild;
  bool? showSwitch;
  Widget? bottomChild;
  Color? bottomContainerColor;
  EdgeInsetsGeometry? padding;

  CustomSettingFeature({
    required this.icon,
    required this.title,
    this.value = false,
    this.onChanged,
    this.showBottomChild = false,
    this.showSwitch = false,
    this.bottomChild,
    this.bottomContainerColor,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xff3C3E40),
            borderRadius: showBottomChild == true
                ? BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  )
                : BorderRadius.circular(20.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 18.h),
          child: Row(
            children: [
              Container(
                height: 36.h,
                width: 40.w,
                padding: padding ??
                    EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.30),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Container(
                    height: 18,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(icon),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: CustomText(
                  title,
                  fontSize: 14.sp,
                  maxLines: 3,
                  height: 1.5,
                ),
              ),
              showSwitch == true
                  ? CupertinoSwitch(
                      value: value ?? false,
                      onChanged: onChanged,
                      activeColor: AppColors.primary,
                      trackColor: const Color(0xffCDCDCD),
                      thumbColor: const Color(0xff1F2024),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
        showBottomChild == true
            ? Container(
                decoration: BoxDecoration(
                    color: bottomContainerColor ?? const Color(0xff212326),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 18.h),
                child: bottomChild,
              )
            : const SizedBox(),
      ],
    );
  }
}
