import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:provider_template/generated/l10n.dart';
import 'app/data/local/my_shared_pref.dart';
import 'app/modules/baseView/myAccount/provider.dart';
import 'app/router/app_router.dart';

Future<void> main() async {
  // wait for bindings
  WidgetsFlutterBinding.ensureInitialized();
  // init shared preference
  await MySharedPref.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MyAccountScreenProvider>(
          create: (_) => MyAccountScreenProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(360, 781),
      child: Consumer<MyAccountScreenProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            locale: Locale(MySharedPref.getCurrentLocal()??"ar"),
            theme: ThemeData(fontFamily: "Cairo"),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          );

        },
      ),
    );
  }
}
