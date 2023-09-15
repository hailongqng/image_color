import 'package:app/app/models/app_config.dart';
import 'package:app/app/app_route.dart';
import 'package:app/app/bloc/app_bloc.dart';
import 'package:app/app/bloc/bloc_provider.dart';
import 'package:app/app/pages/SplashScreen/SplashScreen.dart';
import 'package:app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MobileApp extends StatelessWidget {
  final AppConfig config;

  const MobileApp(this.config, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Setup Http Client
    // HttpClient(config.baseUrl);

    return BlocProvider<AppBloc>(
      blocBuilder: () {
        final appBloc = AppBloc();
        appBloc.config = config;
        return appBloc;
      },
      child: MediaQuery(
        data: MediaQueryData.fromView(WidgetsBinding.instance.window),
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (_, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              navigatorKey: AppRoute.navigatorKey,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              localizationsDelegates: const [
                S.delegate,
              ],
              home: const SplashScreen(),
              routes: AppRoute.registerRoutes(),
            );
          },
        ),
      ),
    );
  }
}
