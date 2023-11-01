// ignore_for_file: avoid_print

import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/routes/app_routes.dart';
import 'package:admin_panel_for_store/core/global/themes/app_light_theme/app_light_colors.dart';
import 'package:admin_panel_for_store/core/utils/app_constants.dart';
import 'package:admin_panel_for_store/core/utils/app_fonts.dart';
import 'package:admin_panel_for_store/core/utils/app_icon_assets.dart';
import 'package:admin_panel_for_store/core/utils/app_model.dart';
import 'package:admin_panel_for_store/core/utils/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class NotFoundRoute extends StatelessWidget {
  const NotFoundRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          AppString.notFoundPage,
        ),
      ),
    );
  }
}

class LogInTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String iconAssets;
  const LogInTextFormField({
    super.key,
    required this.controller,
    required this.textInputType,
    required this.textInputAction,
    required this.iconAssets,
  });

  @override
  State<LogInTextFormField> createState() => _LogInTextFormFieldState();
}

class _LogInTextFormFieldState extends State<LogInTextFormField> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Center(
      child: SizedBox(
        height: height * 0.055,
        width: width * 0.7639,
        child: TextFormField(
          controller: widget.controller,
          keyboardType: widget.textInputType,
          style: Theme.of(context).textTheme.displayMedium,
          textInputAction: widget.textInputAction,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
              borderSide: BorderSide(color: AppColors.whiteColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: AppColors.whiteColor),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 8.h,
            ),
            hintStyle: Theme.of(context).textTheme.displayMedium,
            hintText: AppString.admin,
            prefixIcon: Padding(
              padding: EdgeInsets.only(
                left: 10.w,
                right: 35.w,
              ),
              child: SvgPicture.asset(
                widget.iconAssets,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyCardComponnent extends StatelessWidget {
  final double value;
  final Color color;
  final String text;
  final String textVal;

  const MyCardComponnent({
    super.key,
    required this.value,
    required this.color,
    required this.text,
    required this.textVal,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: AppColors.cardShadowColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 10.w,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 48.h,
              width: 48.w,
              child: SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    startAngle: 270,
                    endAngle: 270,
                    showTicks: false,
                    showLabels: false,
                    axisLineStyle: const AxisLineStyle(
                      thicknessUnit: GaugeSizeUnit.factor,
                      thickness: 0.12,
                    ),
                    pointers: <GaugePointer>[
                      RangePointer(
                        value: value,
                        width: 0.15,
                        color: color,
                        sizeUnit: GaugeSizeUnit.factor,
                        enableAnimation: true,
                        cornerStyle: CornerStyle.bothCurve,
                      ),
                    ],
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                        widget: SvgPicture.asset(
                          AppIconAssets.iconsArrow5,
                        ),
                        angle: 100,
                        positionFactor: 0.1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Text(
                        '\$$textVal',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarComponnent extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scafKey;
  const AppBarComponnent({
    super.key,
    required this.scafKey,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.only(
          left: 15.w,
        ),
        child: InkWell(
          onTap: (() {
            scafKey.currentState?.openDrawer();
          }),
          child: SvgPicture.asset(
            AppIconAssets.iconsGroup44,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class RwoAddComponnetnt extends StatelessWidget {
  final String text;
  final String? add;
  final String routeName;
  const RwoAddComponnetnt(
      {super.key, required this.text, required this.routeName, this.add});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: AppColors.tertiaryColor,
              ),
        ),
        const Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            textStyle: getRegularTextStyle(
                fontSize: AppFontSize.s16.sp, fontColor: AppColors.whiteColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, routeName);
          },
          child: add == null ? Text('+ $text') : Text('$add'),
        ),
      ],
    );
  }
}

class NavBarComponnent extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  final String title4;

  const NavBarComponnent(
      {super.key,
      required this.title1,
      required this.title2,
      required this.title3,
      required this.title4});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Text(
              title1,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Text(
            title2,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 5.h, bottom: 5.h, left: 2.w, right: 15.w),
            child: SvgPicture.asset(
              AppIconAssets.iconsIcon,
            ),
          ),
          Text(
            title3,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 5.h, bottom: 5.h, left: 2.w, right: 10.w),
            child: SvgPicture.asset(
              AppIconAssets.iconsIcon,
            ),
          ),
          Text(
            title4,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}

class SwitchComponnent extends StatefulWidget {
  const SwitchComponnent({super.key});

  @override
  State<SwitchComponnent> createState() => _SwitchComponnentState();
}

class _SwitchComponnentState extends State<SwitchComponnent> {
  final _controller = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return AdvancedSwitch(
      controller: _controller,
      activeColor: AppColors.primaryColor,
      inactiveColor: AppColors.switchInactiveColor,
    );
  }
}

class MyItemComponnent extends StatefulWidget {
  final ItemModel itemModel;
  const MyItemComponnent({
    super.key,
    required this.itemModel,
  });

  @override
  State<MyItemComponnent> createState() => _MyItemComponnentState();
}

class _MyItemComponnentState extends State<MyItemComponnent> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Container(
        height: 35.h,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor.withOpacity(.15),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 15.w,
                ),
                child: Container(
                  height: 15.h,
                  width: 15.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: AppColors.whiteColor,
                  ),
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.w,
                  right: 20.w,
                ),
                child: SizedBox(
                  width: 55.w,
                  child: Text(widget.itemModel.title1,
                      style: Theme.of(context).textTheme.displaySmall),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 15.w,
                  ),
                  child: Text(
                    widget.itemModel.title2,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ),
             
              InkWell(
                onTap: (() {
                  showDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      content: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: SvgPicture.asset(
                              AppIconAssets.iconsGroup37975,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.h,
                            ),
                            child: SvgPicture.asset(
                              AppIconAssets.iconsInfo,
                            ),
                          ),
                          const Text(AppString.confirmDelete)
                        ],
                      ),
                      actions: [
                        CupertinoActionSheetAction(
                          isDestructiveAction: true,
                          onPressed: () {},
                          child: Text(AppString.yes,
                              style: Theme.of(context).textTheme.displaySmall),
                        ),
                        CupertinoActionSheetAction(
                          // isDefaultAction: true,
                          isDestructiveAction: true,
                          onPressed: () {},
                          child: Text(AppString.cancle,
                              style: Theme.of(context).textTheme.displaySmall),
                        ),
                      ],
                    ),
                  );
                }),
                child: SvgPicture.asset(AppIconAssets.iconsTrash2),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, right: 35.w),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.editcategRoute);
                    },
                    child: SvgPicture.asset(AppIconAssets.iconsEdit1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ElevatedButtonComponnent extends StatelessWidget {
  final String text;
  final Color color;
  final Function? onpress;
  const ElevatedButtonComponnent(
      {super.key, required this.text, required this.color, this.onpress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onpress == null ? null : onpress!();
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.all(10.h),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}

class TextFormFieldComponent extends StatelessWidget {
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final int? maxline;
  final String text;
  const TextFormFieldComponent({
    super.key,
    required this.controller,
    required this.textInputAction,
    required this.textInputType,
    required this.text,
    this.maxline,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: Theme.of(context)
          .textTheme
          .titleSmall!
          .copyWith(color: AppColors.primaryColor),
      textInputAction: textInputAction,
      keyboardType: textInputType,
      maxLines: maxline ?? 1,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15.h),
        hintText: text,
        hintStyle: Theme.of(context).textTheme.titleSmall,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}

class MultiButtonComponnemet extends StatelessWidget {
  final String? text;
  final String? routeName;
  const MultiButtonComponnemet({
    super.key,
    this.text,
    this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        ElevatedButtonComponnent(
          text: AppString.close,
          color: AppColors.tertiaryColor,
          onpress: () {
            Navigator.of(context).pop();
          },
        ),
        SizedBox(
          width: AppConstants.getwidth(context) * 0.035,
        ),
        ElevatedButtonComponnent(
          text: text ?? AppString.save,
          color: AppColors.primaryColor,
          onpress: () {
            routeName == null
                ? Navigator.of(context).pop()
                : Navigator.pushNamed(context, routeName!);
          },
        ),
      ],
    );
  }
}

class ImageFieldComponnent extends StatefulWidget {
  const ImageFieldComponnent({super.key});

  @override
  State<ImageFieldComponnent> createState() => _ImageFieldComponnentState();
}

class _ImageFieldComponnentState extends State<ImageFieldComponnent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: AppColors.primaryColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 3.h,
          horizontal: 15.w,
        ),
        child: Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: HexColor('#101828').withOpacity(.05),
                padding: EdgeInsets.symmetric(
                  horizontal: 22.w,
                ),
                backgroundColor: AppColors.whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  side: BorderSide(
                    color: HexColor('#D0D5DD'),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                AppString.browser,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(
              AppIconAssets.iconsImage,
            ),
          ],
        ),
      ),
    );
  }
}

class IndexPageComponnent extends StatelessWidget {
  const IndexPageComponnent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shadowColor: HexColor('#101828').withOpacity(.05),
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 5.h,
              ),
              backgroundColor: AppColors.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
                side: BorderSide(
                  color: HexColor('#D0D5DD'),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              AppString.pevious,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          Text(
            'Page 1 of 1',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shadowColor: HexColor('#101828').withOpacity(.05),
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 5.h,
              ),
              backgroundColor: AppColors.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
                side: BorderSide(
                  color: HexColor('#D0D5DD'),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              AppString.next,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ],
      ),
    );
  }
}
