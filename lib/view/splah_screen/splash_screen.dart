import 'package:flutter/material.dart';
import 'package:getx_mvvm_and_mvc/utils/utils.dart';

import '../../resource/components/Internet_exception_widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Splash Screen'),
        ),
        body: InternetExceptionWidget(
          onPress: () {},
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Utils.toastMessage("dhbhbe");
            Utils.toastMessageCenter("rueui8utg8r");
          },
          child: const Icon(Icons.add),
        ));
  }
}
