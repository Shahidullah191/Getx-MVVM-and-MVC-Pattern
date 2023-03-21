import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter your email',
        },
        'bn_BD': {
          'email_hint': 'আপনার ইমেইল লিখুন',
        }
      };
}
