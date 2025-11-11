import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shefaa_app_flutter/core/routing/app_router.dart';
import 'package:shefaa_app_flutter/core/routing/routes.dart';
import 'package:shefaa_app_flutter/core/theming/manger_color/manger_color.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',

        theme: ThemeData(
          primaryColor: MangerColors.mainBlue,
          scaffoldBackgroundColor: MangerColors.white,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingPage,
      ),
    );
  }
}
