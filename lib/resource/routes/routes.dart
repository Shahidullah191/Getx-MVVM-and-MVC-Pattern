import 'package:get/get.dart';
import 'package:getx_mvvm_and_mvc/resource/routes/routes_name.dart';

import '../../view/splah_screen/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => SplashScreen(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(milliseconds: 500)),
      ];
}
