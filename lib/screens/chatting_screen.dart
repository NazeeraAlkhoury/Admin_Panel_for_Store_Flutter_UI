// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/themes/app_light_theme/app_light_colors.dart';
import 'package:admin_panel_for_store/core/utils/app_constants.dart';
import 'package:admin_panel_for_store/core/utils/app_fonts.dart';
import 'package:admin_panel_for_store/core/utils/app_icon_assets.dart';
import 'package:admin_panel_for_store/core/utils/app_images_assets.dart';
import 'package:admin_panel_for_store/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ChattingScreen extends StatefulWidget {
  const ChattingScreen({super.key});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  var messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        leading: Padding(
          padding: EdgeInsets.all(12.0.w),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                  AppIconAssets.iconsIonChevronBackCircleOutline1)),
        ),
        titleTextStyle: getSemiBoldTextStyle(
            fontSize: AppFontSize.s14.sp,
            fontColor: AppColors.tertiaryColor,
            letter: -0.5),
        centerTitle: true,
        title: const Text(
          AppString.chatWithCustomer,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Yesterday 9:41',
                style: getMediumTextStyle(
                    fontSize: AppFontSize.s10,
                    fontColor: AppColors.chattingTextColor),
              ),
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.03,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(AppImagesAssets.imagesContactPhoto),
                SizedBox(
                  width: AppConstants.getwidth(context) * 0.015,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, bottom: 3.h),
                        child: Text(
                          AppString.admin,
                          style: getRegularTextStyle(
                            fontSize: AppFontSize.s10.sp,
                            fontColor: AppColors.chattingTextColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: AppConstants.getwidth(context) * 0.9,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.w,
                                vertical: 8.h,
                              ),
                              width: AppConstants.getwidth(context) * 0.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.r),
                                color: AppColors.adminMessageColor,
                              ),
                              child: Text(
                                'Hello, Thank you for contacting store\nBefore starting, will store this and personal data according to\nthe privacy policy ',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      color: HexColor('#000000'),
                                    ),
                              ),
                            ),
                            CustomPaint(
                              size: Size(16.w, 20.h),
                              painter: AdminCustomPainter(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.01,
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: AppConstants.getwidth(context) * 0.8,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 8.h,
                      ),
                      width: AppConstants.getwidth(context) * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17.r),
                        color: AppColors.costumermessageColor,
                      ),
                      child: Text(
                        'please i need to help me',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    CustomPaint(
                      size: Size(16.w, 20.h),
                      painter: CustomerCustomPainter(),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Divider(),
            SizedBox(
              height: AppConstants.getheight(context) * 0.052,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: messageController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 12.w,
                          top: 4.h,
                          bottom: 4.h,
                        ),
                        icon: SvgPicture.asset(
                            AppIconAssets.iconsClarityAttachmentLine),
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(3.0.w),
                          child: SvgPicture.asset(
                              AppIconAssets.iconsMessagesSendIcon),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.r),
                          borderSide: BorderSide(
                            color: AppColors.tertiaryColor.withOpacity(.36),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.r),
                          borderSide: BorderSide(
                            color: AppColors.tertiaryColor.withOpacity(.36),
                          ),
                        ),
                        hintText: AppString.iMessage,
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: AppColors.chattingTextColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.w,
                    ),
                    child: SvgPicture.asset(AppIconAssets.iconsSendPlaneFill1),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomerCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9933706, size.height * 0.9611714);
    path_0.cubicTo(
        size.width * 0.6874882,
        size.height * 0.9992667,
        size.width * 0.3855294,
        size.height * 0.8629143,
        size.width * 0.2874906,
        size.height * 0.7756143);
    path_0.cubicTo(
        size.width * 0.3885418,
        size.height * 0.5805429,
        size.width * -0.2353282,
        size.height * 0.1067552,
        size.width * 0.1764365,
        size.height * 0.1067371);
    path_0.cubicTo(
        size.width * 0.2716488,
        size.height * 0.1067371,
        size.width * 0.3529700,
        size.height * -0.09517143,
        size.width * 0.6992529,
        size.height * 0.05640952);
    path_0.cubicTo(
        size.width * 0.7005059,
        size.height * 0.1176876,
        size.width * 0.6992529,
        size.height * 0.3298010,
        size.width * 0.6992529,
        size.height * 0.3659143);
    path_0.cubicTo(
        size.width * 0.6992529,
        size.height * 0.8659143,
        size.width * 1.052194,
        size.height * 0.9324429,
        size.width * 0.9933706,
        size.height * 0.9611714);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff007AFF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class AdminCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.006627118, size.height * 0.9611714);
    path_0.cubicTo(
        size.width * 0.3125094,
        size.height * 0.9992667,
        size.width * 0.6144706,
        size.height * 0.8629143,
        size.width * 0.7125118,
        size.height * 0.7756143);
    path_0.cubicTo(
        size.width * 0.6114588,
        size.height * 0.5805429,
        size.width * 1.235329,
        size.height * 0.1067552,
        size.width * 0.8235647,
        size.height * 0.1067371);
    path_0.cubicTo(
        size.width * 0.7283529,
        size.height * 0.1067371,
        size.width * 0.6470294,
        size.height * -0.09517143,
        size.width * 0.3007447,
        size.height * 0.05640952);
    path_0.cubicTo(
        size.width * 0.2994971,
        size.height * 0.1176876,
        size.width * 0.3007447,
        size.height * 0.3298010,
        size.width * 0.3007447,
        size.height * 0.3659143);
    path_0.cubicTo(
        size.width * 0.3007447,
        size.height * 0.8659143,
        size.width * -0.05219641,
        size.height * 0.9324429,
        size.width * 0.006627118,
        size.height * 0.9611714);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffE9E9EB).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
