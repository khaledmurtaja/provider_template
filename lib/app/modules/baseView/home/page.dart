import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_template/app/modules/baseView/home/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeScreenProvider>(
      create: (context) => HomeScreenProvider(),
      child: const Scaffold(
        appBar:null
      ),
    );
  }
}
