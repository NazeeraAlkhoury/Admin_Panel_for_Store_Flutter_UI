import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/routes/app_routes.dart';
import 'package:admin_panel_for_store/core/global/themes/app_light_theme/app_light_colors.dart';
import 'package:admin_panel_for_store/core/utils/app_componnent.dart';
import 'package:admin_panel_for_store/core/utils/app_model.dart';
import 'package:admin_panel_for_store/screens/menue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List<ItemModel> itemList = const [
    ItemModel(
        title1: 'sami', title2: 'I need to help me in my setuation please'),
    ItemModel(title1: 'Nazeera', title2: 'I check my payment for you'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBarComponnent(scafKey: scaffoldKey),
      drawer: const AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RwoAddComponnetnt(
              text: AppString.chat,
              add: AppString.reply,
              routeName: AppRoutes.replyRoute,
            ),
            const Divider(),
            const NavBarComponnent(
              title1: AppString.select,
              title2: AppString.username,
              title3: AppString.textMessage,
              title4: AppString.state,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: const Divider(),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: itemList.length,
                itemBuilder: (context, index) =>
                    ChatItemBuilder(itemModel: itemList[index]),
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

class ChatItemBuilder extends StatefulWidget {
  final ItemModel itemModel;
  const ChatItemBuilder({super.key, required this.itemModel});

  @override
  State<ChatItemBuilder> createState() => _ChatItemBuilderState();
}

class _ChatItemBuilderState extends State<ChatItemBuilder> {
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
              Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: CircleAvatar(
                  radius: 8.r,
                  backgroundColor: isChecked
                      ? AppColors.primaryColor
                      : AppColors.tertiaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
