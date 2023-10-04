import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_template/app/modules/baseView/myAccount/provider.dart';

import 'home/page.dart';
import 'myAccount/page.dart';
import 'myOrders/page.dart';
import 'notifications/page.dart';

class BaseViewProvider extends ChangeNotifier{

  List<Widget> screens=[
    const HomeScreen(),
    const NotificationsScreen(),
    const MyOrdersScreen(),
    const MyAccountScreen(),
  ];
  changeCurrentIndex(int index,BuildContext buildContext){
    Provider.of<MyAccountScreenProvider>(buildContext,listen: false).currentIndex=index;
    notifyListeners();
  }

}