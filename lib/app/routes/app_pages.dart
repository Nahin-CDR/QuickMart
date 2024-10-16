import 'package:get/get.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboard/bindings/onboard_binding.dart';
import '../modules/onboard/views/onboard_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/userSignUp/signup/bindings/signup_binding.dart';
import '../modules/userSignUp/signup/views/signup_view.dart';
import '../modules/userSignUp/verify/bindings/verify_binding.dart';
import '../modules/userSignUp/verify/views/verify_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARD,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY,
      page: () => const VerifyView(),
      binding: VerifyBinding(),
    ),
  ];
}
