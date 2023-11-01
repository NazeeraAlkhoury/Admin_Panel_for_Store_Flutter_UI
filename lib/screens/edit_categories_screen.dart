import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/themes/app_light_theme/app_light_colors.dart';
import 'package:admin_panel_for_store/core/utils/app_componnent.dart';
import 'package:admin_panel_for_store/core/utils/app_constants.dart';
import 'package:admin_panel_for_store/screens/menue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditCategoriesScreen extends StatefulWidget {
  const EditCategoriesScreen({super.key});

  @override
  State<EditCategoriesScreen> createState() => _EditCategoriesScreenState();
}

class _EditCategoriesScreenState extends State<EditCategoriesScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var nameController = TextEditingController();
  var descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBarComponnent(scafKey: _scaffoldKey),
      drawer: const AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
        ),
        child: Column(
          children: [
            Text(
              AppString.viewCategories,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: AppColors.tertiaryColor,
                  ),
            ),
            const Divider(),
            SizedBox(
              height: AppConstants.getheight(context) * 0.024,
            ),
            Row(
              children: [
                SizedBox(
                  width: AppConstants.getwidth(context) * 0.64,
                  height: AppConstants.getheight(context) * 0.06,
                  child: TextFormFieldComponent(
                    controller: nameController,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    text: AppString.name,
                  ),
                ),
                const Spacer(),
                const SwitchComponnent(),
              ],
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.01,
            ),
            TextFormFieldComponent(
              controller: descriptionController,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.multiline,
              text: AppString.description,
              maxline: 3,
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.03,
            ),
            const MultiButtonComponnemet(
              text: AppString.update,
            ),
          ],
        ),
      ),
    );
  }
}
