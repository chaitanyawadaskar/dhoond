import 'package:dhoond/screens/partners_screens/partner_dashboard_screen/partner_dashboard_screen.dart';
import 'package:dhoond/screens/users_screens/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:dhoond/utilities/custom_colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'data/services/localization_service/localization_service.dart';
import 'screens/starting_screens/splash_screen/splash_screen.dart';
import 'screens/users_screens/book_at_your_price/bayp_services_screen/bayp_services_screen.dart';
import 'screens/users_screens/float_payment/appointment_calender.dart';
import 'screens/users_screens/float_payment/float_payment_plan_screen/float_payment_plan_screen.dart';
import 'utilities/theme/apptheme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: CustomColors.black,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(410, 860),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return child!;
      },
      child: GetMaterialApp(
        locale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        translations: LocalizationService(),
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        themeMode: ThemeMode.light,
        initialRoute: 'user',
        routes: {
          'user': (context) => const UserDashboardScreen(),
          'partner': (context) => const PartnerDashboardScreen(),
          '/': (context) => const SplashScreen(),
          'float': (context) => const FloatPaymentPlanScreen(),
          'cal': (context) => const AppointmentCalender(),
          'bayp': (context) => const BAYPServiceScreen(),
        },
      ),
    );
  }
}
