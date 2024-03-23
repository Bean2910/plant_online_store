import 'package:get/get.dart';

import '../modules/DetailPlant/bindings/detail_plant_binding.dart';
import '../modules/DetailPlant/views/detail_plant_view.dart';
import '../modules/FingerPrint/bindings/finger_print_binding.dart';
import '../modules/FingerPrint/views/finger_print_view.dart';
import '../modules/LetsYouIn/bindings/lets_you_in_binding.dart';
import '../modules/LetsYouIn/views/lets_you_in_view.dart';
import '../modules/Master/bindings/master_binding.dart';
import '../modules/Master/views/master_view.dart';
import '../modules/Pin/bindings/pin_binding.dart';
import '../modules/Pin/views/pin_view.dart';
import '../modules/Profile/bindings/profile_binding.dart';
import '../modules/Profile/views/profile_view.dart';
import '../modules/SearchScreen/bindings/search_screen_binding.dart';
import '../modules/SearchScreen/views/search_screen_view.dart';
import '../modules/SignIn/bindings/sign_in_binding.dart';
import '../modules/SignIn/views/sign_in_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';
import '../modules/SplashScreen/bindings/splash_screen_binding.dart';
import '../modules/SplashScreen/views/splash_screen_view.dart';
import '../modules/Walkthrough/bindings/walkthrough_binding.dart';
import '../modules/Walkthrough/views/walkthrough_view.dart';
import '../modules/WelcomScreen/bindings/welcom_screen_binding.dart';
import '../modules/WelcomScreen/views/welcom_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MASTER;
  //static const INITIAL = Routes.WELCOM_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.WELCOM_SCREEN,
      page: () => const WelcomScreenView(),
      binding: WelcomScreenBinding(),
    ),
    GetPage(
      name: _Paths.LETS_YOU_IN,
      page: () => const LetsYouInView(),
      binding: LetsYouInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.WALKTHROUGH,
      page: () => WalkthroughView(),
      binding: WalkthroughBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PIN,
      page: () => const PinView(),
      binding: PinBinding(),
    ),
    GetPage(
      name: _Paths.FINGER_PRINT,
      page: () => const FingerPrintView(),
      binding: FingerPrintBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PLANT,
      page: () => DetailPlantView(),
      binding: DetailPlantBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_SCREEN,
      page: () => SearchScreenView(),
      binding: SearchScreenBinding(),
    ),
    GetPage(
      name: _Paths.MASTER,
      page: () => const MasterView(),
      binding: MasterBinding(),
    ),
  ];
}
