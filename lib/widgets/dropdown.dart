import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class CustomDropdownButton extends StatelessWidget {
  final String hintText;
  final List<String> items;
  final void Function(String?)? onChanged;
  String? Function(String?)? validator;
  void Function(String?)? onSaved;
  CustomDropdownButton({
    super.key,
    required this.hintText,
    required this.items,
    required this.onChanged,
    this.validator,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButtonFormField<String>(
          /// This value should come from list or should be conmmented else will give error that There should be exatly one item ..... blah blah
          // value: selectedItem,
          menuMaxHeight: Get.height * 0.5,
          validator: validator,
          onSaved: onSaved,
          focusColor: Colors.transparent,
          dropdownColor: AppColors.black,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black,
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppColors.white,
              fontSize: 16.sp,
            ),
            contentPadding: EdgeInsets.only(right: 10.w, left: 8),
            border: border(),
            enabledBorder: border(),
            focusedBorder: focusedBorder(),
          ),
          onChanged: onChanged,
          isExpanded: true,
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.white,
          ),
          iconSize: 24,
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w300,
          ),
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((String item) {
              return Text(
                item,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16.sp,
                ),
              );
            }).toList();
          },
          items: items
              .where((item) => item != 'select')
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16.sp,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(color: AppColors.primary
          // .withOpacity(0.5),
          ),
    );
  }

  focusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(color: AppColors.primary),
    );
  }
}
