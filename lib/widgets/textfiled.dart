// import 'package:calm/utils/colors.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter/material.dart';

// class CustomTextField extends StatelessWidget {
//   String hintText;
//   IconData? prefixIcon;
//   TextEditingController controller;
//   Widget? suffix;
//   bool obscureText;
//   String? Function(String?)? validator;
//   TextInputType? keyboardType;
//   TextInputAction? textInputAction;
//   Color? borderColor;
//   Color? fillColor;
//   Color? prefixIconColor;
//   TextStyle? hintStyle;

//   CustomTextField({
//     required this.hintText,
//     required this.controller,
//     this.keyboardType,
//     this.textInputAction,
//     this.suffix,
//     this.obscureText = false,
//     this.validator,
//     this.prefixIcon,
//     this.fillColor,
//     this.borderColor,
//     this.prefixIconColor,
//     this.hintStyle,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 5.h),
//       child: SizedBox(
//         height: 51.h,
//         child: TextFormField(
//           obscureText: obscureText,
//           style: TextStyle(
//             color: AppColors.white,
//             fontSize: 16,
//           ),
//           textAlign: TextAlign.center,
//           validator: validator,
//           keyboardType: keyboardType,
//           textInputAction: textInputAction,
//           decoration: InputDecoration(
//             hintText: hintText,
//             hintStyle:
//                 hintStyle ?? TextStyle(color: AppColors.white, fontSize: 12),
//             prefixIcon: Padding(
//               padding: const EdgeInsets.only(left: 12),
//               child: Icon(
//                 prefixIcon,
//                 color: prefixIconColor ?? AppColors.lightBlue.withOpacity(.6),
//               ),
//             ),
//             filled: true,
//             fillColor: fillColor ?? Colors.transparent,
//             suffixIcon: Padding(
//               padding: const EdgeInsets.only(right: 10),
//               child: suffix,
//             ),
//             border: border(),
//             enabledBorder: border(),
//             focusedBorder: border(),
//           ),
//         ),
//       ),
//     );
//   }

//   border() {
//     return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(50),
//       borderSide:
//           BorderSide(color: borderColor ?? AppColors.lightBlue, width: 1.5),
//     );
//   }
// }
