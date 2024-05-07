import 'package:calm/botombar.dart';
import 'package:calm/coming_soon.dart';
import 'package:calm/utils/colors.dart';
import 'package:calm/utils/images.dart';
import 'package:calm/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollKey = ScrollController();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.inkish,
            AppColors.inkish,
            AppColors.primary,
          ],
        )),
        child: SingleChildScrollView(
          controller: scrollKey,
          child: Stack(
            children: [
              Container(
                height: Get.height * .45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.home),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Get.to(ComingSoon()),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top + 10.h,
                      left: 10.w),
                  child: CircleAvatar(
                    backgroundColor: AppColors.primary.withOpacity(0.6),
                    radius: 15.r,
                    child: Icon(
                      CupertinoIcons.photo,
                      color: AppColors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () => Get.to(ComingSoon()),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top + 10.h,
                        right: 10.w),
                    child: CircleAvatar(
                      backgroundColor: AppColors.primary.withOpacity(0.6),
                      radius: 15.r,
                      child: Icon(
                        CupertinoIcons.gift_fill,
                        size: 15,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: EdgeInsets.only(top: 25.h),
                    child: Image.asset(
                      AppImages.calm,
                      height: 50.h,
                      width: 100.w,
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 320.h),
                    CustomText(
                      'Good Morning, User',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 15.h),
                    dealsContainer(),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          'Recently Played',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          'See All',
                          fontSize: 13.sp,
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () => Get.to(ComingSoon()),
                      child: Container(
                        width: Get.width * .55,
                        height: 190.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AppImages.recent,
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                    CustomText(
                      'Reef',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 3.h),
                    CustomText(
                      'Antonymes . Song',
                      color: AppColors.white.withOpacity(.6),
                    ),
                    SizedBox(height: 12.h),
                    Divider(
                      color: AppColors.purple,
                      thickness: .5,
                    ),
                    SizedBox(height: 12.h),
                    CustomText(
                      'Personalize Your Recommendations',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 12.h),
                    dealsContainer(
                        child: CircleAvatar(
                          radius: 18.r,
                          backgroundColor: AppColors.purple,
                          child: const Icon(
                            Icons.emoji_emotions,
                            color: Colors.yellow,
                          ),
                        ),
                        child2: CustomText(
                          'How are your feeling?',
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                        )),
                    SizedBox(height: 12.h),
                    CustomText(
                      'Recommends for you',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 520.h,
                      child: ListView.builder(
                        controller: scrollKey,
                        itemCount: 5,
                        itemBuilder: (c, i) => listViewItem(),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(BottomBar(
                          index: 0,
                        ));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 42.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 8.h),
                        decoration: BoxDecoration(
                            color: AppColors.black.withOpacity(.15),
                            border: Border.all(
                                color: AppColors.purple.withOpacity(.5),
                                width: 1),
                            borderRadius: BorderRadius.circular(50.r)),
                        child: Center(
                          child: CustomText(
                            'Refresh Recommendations',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    CustomText(
                      'Today on Calm',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 15.h),
                    SizedBox(
                      height: 235.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: scrollKey,
                        itemCount: 5,
                        itemBuilder: (c, i) => todayWidget(),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Divider(
                      color: AppColors.purple,
                      thickness: .5,
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          'Popular Sleep Stories',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        CustomText(
                          'See All',
                          fontSize: 13.sp,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 205.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: scrollKey,
                        itemCount: 5,
                        itemBuilder: (c, i) => storiesWidget(),
                      ),
                    ),
                    Divider(
                      color: AppColors.purple,
                      thickness: .5,
                    ),
                    SizedBox(height: 10.h),
                    CustomText(
                      'Explore by Content',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        contentButton(Icons.circle_outlined, 'Meditation', () {
                          Get.offAll(BottomBar(
                            index: 0,
                          ));
                        }),
                        SizedBox(width: 12.w),
                        contentButton(CupertinoIcons.moon_fill, 'Sleep', () {
                          Get.off(BottomBar(
                            index: 2,
                          ));
                        }),
                        SizedBox(width: 12.w),
                        contentButton(CupertinoIcons.music_note_2, 'Music', () {
                          Get.offAll(ComingSoon());
                        }),
                      ],
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  storiesWidget() => Padding(
        padding: EdgeInsets.only(right: 15.w),
        child: InkWell(
          onTap: () => Get.to(ComingSoon()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    width: 150.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          AppImages.walpaper4,
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h, left: 10.w),
                    child: Icon(
                      CupertinoIcons.lock_circle,
                      color: AppColors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    'Healing Is A Miracle',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 5.h),
                  CustomText(
                    'jeff Warren',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  todayWidget() => Padding(
        padding: EdgeInsets.only(right: 15.w),
        child: InkWell(
          onTap: () => Get.to(ComingSoon()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    width: 250.w,
                    height: 180.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          AppImages.walpaper5,
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h, left: 10.w),
                    child: Icon(
                      CupertinoIcons.lock_circle,
                      color: AppColors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        AppImages.walpaper0,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        'Healing Is A Miracle',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 5.h),
                      CustomText(
                        'jeff Warren',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  contentButton(IconData icon, String text, void Function()? onTap) => Expanded(
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 60.h,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: AppColors.black.withOpacity(.15),
              border:
                  Border.all(color: AppColors.purple.withOpacity(.5), width: 1),
              borderRadius: BorderRadius.circular(12.r.r),
            ),
            child: Column(
              children: [
                Icon(
                  icon,
                  color: AppColors.white,
                  size: 20,
                ),
                SizedBox(height: 6.h),
                CustomText(
                  text,
                  fontSize: 13.sp,
                ),
              ],
            ),
          ),
        ),
      );

  listViewItem() => InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          margin: EdgeInsets.symmetric(vertical: 5.h),
          decoration: BoxDecoration(
              color: AppColors.black.withOpacity(.3),
              borderRadius: BorderRadius.circular(12.r)),
          child: InkWell(
            onTap: () => Get.to(ComingSoon()),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      width: 75.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AppImages.walpaper0,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.w, bottom: 4.h),
                      child: Icon(
                        CupertinoIcons.play_circle,
                        color: AppColors.white,
                        size: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      'Meditation - 3 min',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 5.h),
                    CustomText(
                      'Healing Is A Miracle',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 5.h),
                    CustomText(
                      'jeff Warren',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  dealsContainer({Widget? child, Widget? child2}) => InkWell(
        onTap: () => Get.to(ComingSoon()),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          decoration: BoxDecoration(
              color: AppColors.black.withOpacity(.15),
              border:
                  Border.all(color: AppColors.purple.withOpacity(.5), width: 1),
              borderRadius: BorderRadius.circular(12.r)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              child ??
                  Container(
                    height: 35.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.purple,
                          AppColors.pink,
                        ],
                      ),
                    ),
                    child: Icon(
                      CupertinoIcons.gift,
                      color: AppColors.white,
                      size: 20,
                    ),
                  ),
              SizedBox(width: 12.h),
              child2 ??
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        'Our best deal is back',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 5.h),
                      CustomText(
                        'Get 50% off before May 12th',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ],
                  ),
              Spacer(),
              Icon(
                CupertinoIcons.chevron_right,
                color: AppColors.white,
                size: 22,
              ),
            ],
          ),
        ),
      );
}
