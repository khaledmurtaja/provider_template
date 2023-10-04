import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider_template/app/modules/baseView/myOrders/provider.dart';
import 'package:provider_template/utils/colors.dart';

import '../../../../generated/l10n.dart';
import '../../../../utils/helper_functions.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyOrdersScreenProvider>(
      create: (context) => MyOrdersScreenProvider(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          centerTitle: true,
          toolbarHeight: getMediaQueryHeight(context: context, value: 63),
          title: Text(
            S.of(context).myOrders,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.spMin),
          ),
        ),
      ),
    );
  }
}
