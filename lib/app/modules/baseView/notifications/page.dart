import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider_template/app/modules/baseView/notifications/provider.dart';
import 'package:provider_template/utils/colors.dart';

import '../../../../generated/l10n.dart';
import '../../../../utils/helper_functions.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotificationsScreenProvider>(
      create: (context) => NotificationsScreenProvider(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: getMediaQueryHeight(context: context, value: 63),
          centerTitle: true,
          elevation: 0,
          backgroundColor: appBarColor,
          title: Text(
            S.of(context).notifications,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.spMin),
          ),
        ),
      ),
    );
  }
}
