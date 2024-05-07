import 'package:calm/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggleButtonGroup extends StatefulWidget {
  final List<String> buttonTitles;
  final List<String> images;
  final void Function(int) onButtonSelected;

  const ToggleButtonGroup({
    super.key,
    required this.buttonTitles,
    required this.images,
    required this.onButtonSelected,
  });

  @override
  _ToggleButtonGroupState createState() => _ToggleButtonGroupState();
}

class _ToggleButtonGroupState extends State<ToggleButtonGroup> {
  int _selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.buttonTitles.length,
        (index) => _buildButton(
          widget.buttonTitles[index],
          widget.images[index],
          index,
        ),
      ),
    );
  }

  Widget _buildButton(String title, String img, int index) {
    final isSelected = index == _selectedButtonIndex;
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedButtonIndex = index;
              });
              widget.onButtonSelected(_selectedButtonIndex);
            },
            child: Container(
              height: 70.h,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : AppColors.greyDark,
                // borderRadius: _getBorderRadius(index, isSelected),
                // border: Border.all(
                //   color: AppColors.primary,
                //   width: 0.5,
                // ),
              ),
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 5.w),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Image.asset(
                      img,
                      width: 28.w,
                      height: 28.w,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      // color: isSelected ? Colors.white : AppColors.primary,
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  BorderRadius _getBorderRadius(int index, bool isSelected) {
    if (widget.buttonTitles.length == 2) {
      if (index == 0) {
        return const BorderRadius.only(
          topLeft: Radius.circular(50.0),
          bottomLeft: Radius.circular(50.0),
        );
      } else {
        return const BorderRadius.only(
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
        );
      }
    } else {
      if (index == 0) {
        return BorderRadius.only(
          topLeft: Radius.circular(isSelected ? 50.0 : 0),
          bottomLeft: Radius.circular(isSelected ? 50.0 : 0),
        );
      } else if (index == widget.buttonTitles.length - 1) {
        return BorderRadius.only(
          topRight: Radius.circular(isSelected ? 50.0 : 0),
          bottomRight: Radius.circular(isSelected ? 50.0 : 0),
        );
      } else {
        return BorderRadius.zero;
      }
    }
  }
}
