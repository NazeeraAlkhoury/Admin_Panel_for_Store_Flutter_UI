import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/routes/app_routes.dart';
import 'package:admin_panel_for_store/core/global/themes/app_light_theme/app_light_colors.dart';
import 'package:admin_panel_for_store/core/utils/app_componnent.dart';
import 'package:admin_panel_for_store/core/utils/app_constants.dart';
import 'package:admin_panel_for_store/core/utils/app_icon_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogInAdminScreen extends StatefulWidget {
  const LogInAdminScreen({super.key});

  @override
  State<LogInAdminScreen> createState() => _LogInAdminScreenState();
}

class _LogInAdminScreenState extends State<LogInAdminScreen> {
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 310.w, top: 60.h, bottom: 10.h),
              child: CustomPaint(
                size: Size(80.w, 80.h),
                painter: PrimaryCustomPainter(),
              ),
            ),
            Center(child: SvgPicture.asset(AppIconAssets.iconsGroup)),
            // Center(
            //   child: SizedBox(
            //     height: height * 0.055,
            //     width: width * 0.7639,
            //     child: TextFormField(
            //       keyboardType: TextInputType.name,
            //       decoration: InputDecoration(
            //         focusedBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(4.r),
            //           borderSide: BorderSide(color: AppColors.borderLoginColor),
            //         ),
            //         enabledBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(4),
            //           borderSide: BorderSide(color: AppColors.borderLoginColor),
            //         ),
            //         contentPadding: EdgeInsets.symmetric(
            //           horizontal: 5.w,
            //           vertical: 10.h,
            //         ),
            //         hintStyle: Theme.of(context).textTheme.displayMedium,
            //         hintText: AppString.admin,
            //         prefixIcon: Padding(
            //           padding: EdgeInsets.only(
            //             left: 10.w,
            //             right: 35.w,
            //           ),
            //           child: SvgPicture.asset(
            //             AppIconAssets.iconsUser,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: height * 0.057,
            ),
            LogInTextFormField(
                controller: nameController,
                textInputType: TextInputType.name,
                textInputAction: TextInputAction.next,
                iconAssets: AppIconAssets.iconsUser),
            SizedBox(
              height: height * 0.025,
            ),
            LogInTextFormField(
                controller: passwordController,
                textInputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                iconAssets: AppIconAssets.iconsLock),
            SizedBox(
              height: height * 0.048,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: AppColors.loginShadwoColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  maximumSize: Size(
                    width * 0.7639,
                    height * 0.055,
                  ),
                  backgroundColor: AppColors.whiteColor,
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, AppRoutes.dashBoardRoute, (route) => false);
                },
                child: SizedBox(
                  height: height * 0.055,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 90.w,
                          right: 70.w,
                        ),
                        child: Text(
                          AppString.logIn,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                      SvgPicture.asset(AppIconAssets.iconsFrame2),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.03,
            ),
            CustomPaint(
              size: Size(441.w, 220.h),
              painter: SecondCustomPainter(),
            )
          ],
        ),
      ),
    );
  }
}

class SecondCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7191005, size.height * 0.8434574);
    path_0.cubicTo(
        size.width * 0.8812196,
        size.height * 0.8263262,
        size.width * 0.9909579,
        size.height * 0.9720426,
        size.width * 1.025561,
        size.height * 1.047043);
    path_0.lineTo(size.width * -0.006992336, size.height * 1.033961);
    path_0.lineTo(size.width * -0.003499556, size.height * 0.002134202);
    path_0.lineTo(size.width * 0.1118280, size.height * 0.003033468);
    path_0.cubicTo(
        size.width * 0.4687407,
        size.height * 0.06042730,
        size.width * 0.4078902,
        size.height * 0.2776773,
        size.width * 0.3328505,
        size.height * 0.3791277);
    path_0.cubicTo(
        size.width * 0.2889860,
        size.height * 0.4504043,
        size.width * 0.2095257,
        size.height * 0.6223333,
        size.width * 0.2425911,
        size.height * 0.7398617);
    path_0.cubicTo(
        size.width * 0.2839252,
        size.height * 0.8867695,
        size.width * 0.5164533,
        size.height * 0.8648723,
        size.width * 0.7191005,
        size.height * 0.8434574);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = AppColors.secondaryColor;

    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class PrimaryCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paintFill0 = Paint()
      ..color = AppColors.secondaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.1854839);
    path_0.lineTo(size.width * 0.9919355, size.height * 0.0241935);
    path_0.quadraticBezierTo(size.width * 0.6733871, size.height * 0.0221774,
        size.width * 0.6612903, size.height * 0.0080645);
    path_0.cubicTo(
        size.width * 0.3951613,
        0,
        size.width * 0.0483871,
        size.height * 0.1290323,
        size.width * 0.0080645,
        size.height * 0.5403226);
    path_0.quadraticBezierTo(size.width * 0.0806452, size.height * 0.9616935,
        size.width * 0.6532258, size.height);
    path_0.lineTo(size.width, size.height * 0.9758065);
    path_0.lineTo(size.width * 0.9838710, size.height * 0.8064516);
    path_0.quadraticBezierTo(size.width * 0.8024194, size.height * 0.8266129,
        size.width * 0.6693548, size.height * 0.8064516);
    path_0.cubicTo(
        size.width * 0.5846774,
        size.height * 0.8004032,
        size.width * 0.2943548,
        size.height * 0.7479839,
        size.width * 0.2741935,
        size.height * 0.5645161);
    path_0.cubicTo(
        size.width * 0.2620968,
        size.height * 0.3447581,
        size.width * 0.3830645,
        size.height * 0.2197581,
        size.width * 0.7016129,
        size.height * 0.1612903);
    path_0.quadraticBezierTo(size.width * 0.7842742, size.height * 0.1572581,
        size.width, size.height * 0.1854839);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    Paint paintStroke0 = Paint()
      ..color = AppColors.secondaryColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
