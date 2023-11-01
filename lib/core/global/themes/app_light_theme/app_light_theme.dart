import 'package:admin_panel_for_store/core/global/themes/app_light_theme/app_light_colors.dart';
import 'package:admin_panel_for_store/core/utils/app_fonts.dart';
import 'package:admin_panel_for_store/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData getLightTheme() => ThemeData(
      primarySwatch: AppColors.primaryColor,
      //primaryColor: AppColors.primaryColor,
      fontFamily: AppFontFamily.sfFontFamily,
      scaffoldBackgroundColor: AppColors.scaffoldColor,

      //textTheme
      textTheme: TextTheme(
        displayMedium: getRegularTextStyle(
          fontSize: AppFontSize.s16.sp,
          fontColor: AppColors.whiteColor,
          letter: -0.41.w,
        ),
        displaySmall: getRegularTextStyle(
          fontSize: AppFontSize.s13.sp,
          fontColor: AppColors.tertiaryColor,
          letter: -0.41.w,
        ),
        displayLarge: getBoldTextStyle(
          fontSize: AppFontSize.s20.sp,
          fontColor: AppColors.tertiaryColor,
          letter: -0.41.w,
        ),
        headlineSmall: getRegularTextStyle(
          fontSize: AppFontSize.s16.sp,
          fontColor: AppColors.tertiaryColor,
          letter: -0.41.w,
        ),
        headlineMedium: getRegularTextStyle(
          fontSize: AppFontSize.s22.sp,
          fontColor: AppColors.quinaryColor,
        ),
        headlineLarge: getBoldTextStyle(
          fontSize: AppFontSize.s13.sp,
          fontColor: AppColors.cardTextTitleColor,
        ),
        titleLarge: getBoldTextStyle(
          fontSize: AppFontSize.s33,
          fontColor: AppColors.whiteColor,
          letter: -0.35.w,
        ),
        titleMedium: getRegularTextStyle(
          fontSize: AppFontSize.s15.sp,
          fontColor: AppColors.textColor,
          letter: -0.24.w,
        ),
        titleSmall: getRegularTextStyle(
          fontSize: AppFontSize.s16.sp,
          fontColor: AppColors.primaryColor.withOpacity(.5),
          letter: -0.41.w,
        ),
      ),

      //appBarTheme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.appBarColor,
        elevation: 0,
      ),

      //DrawerTheme
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.tertiaryColor,
        elevation: 0,
        scrimColor: AppColors.scaffoldColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30.r),
            bottomLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
      ),

      //dividerTheme
      dividerTheme: DividerThemeData(
        color: AppColors.dividerColor,
      ),

      //checkBoxTheme
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.r),
        ),
        side: BorderSide(color: AppColors.checkBorderColor),
        checkColor: MaterialStateProperty.all(AppColors.primaryColor),
        fillColor: MaterialStateProperty.all(AppColors.whiteColor),
      ),

      //SwitchTheme
      // switchTheme: SwitchThemeData(
      //   thumbColor: MaterialStateProperty.all(
      //     AppColors.whiteColor,
      //   ),
      //   trackColor: MaterialStateProperty.resolveWith((states) {
      //     if (states.contains(MaterialState.selected)) {
      //       return AppColors.primaryColor;
      //     } else {
      //       return AppColors.switchInactiveColor;
      //     }
      //   }),
      // ),
    );
