// ignore_for_file: prefer_final_fields

import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/routes/app_routes.dart';
import 'package:admin_panel_for_store/core/utils/app_componnent.dart';
import 'package:admin_panel_for_store/core/utils/app_model.dart';

import 'package:admin_panel_for_store/screens/menue.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  List<ItemModel> itemList = const [
    ItemModel(title1: AppString.bags, title2: AppString.text),
    ItemModel(title1: AppString.watches, title2: AppString.text),
    ItemModel(title1: AppString.rings, title2: AppString.text),
    ItemModel(title1: AppString.earring, title2: AppString.text),
    ItemModel(title1: AppString.earring, title2: AppString.text),
  ];

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RwoAddComponnetnt(
              text: AppString.categories,
              routeName: AppRoutes.addcategRoute,
            ),
            const Divider(),
            const NavBarComponnent(
              title1: AppString.select,
              title2: AppString.name,
              title3: AppString.description,
              title4: AppString.view,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: const Divider(),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: itemList.length,
                itemBuilder: (context, index) => MyItemComponnent(
                  itemModel: itemList[index],
                ),
              ),
            ),
            const Spacer(),
            const Divider(),
            const IndexPageComponnent(),
          ],
        ),
      ),
    );
  }
}
