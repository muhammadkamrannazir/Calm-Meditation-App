// // ignore_for_file: must_be_immutable, file_names

// // ignore_for_file: must_be_immutable, file_names
// import 'package:calm/widgets/text.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../utils/colors.dart';

// class CustomButton extends StatelessWidget {
//   final String name;
//   double? height;
//   double? width;
//   bool loading;
//   Color? color;
//   Color? textColor;
//   Color? borderColor;
//   VoidCallback? onPressed;
//   double? fontSize;
//   CustomButton({
//     Key? key,
//     required this.name,
//     this.color,
//     this.textColor,
//     this.borderColor,
//     this.height,
//     this.loading = false,
//     this.width,
//     this.fontSize,
//     required this.onPressed,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 5.h),
//       child: InkWell(
//         onTap: onPressed,
//         child: Container(
//           height: height ?? 51.h,
//           width: width ?? double.infinity,
//           decoration: BoxDecoration(
//             color: color ?? AppColors.lightBlue,
//             borderRadius: BorderRadius.circular(200),
//             border: Border.all(
//                 color: borderColor ?? AppColors.lightBlue, width: 1.5),
//           ),
//           child: Center(
//             child: CustomText(
//               name,
//               fontSize: fontSize ?? 12.sp,
//               color: textColor ?? Colors.white,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// indicator() {
//   return Center(
//     child: CupertinoActivityIndicator(
//       color: AppColors.primary,
//       radius: 15,
//     ),
//   );
// }
