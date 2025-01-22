import 'package:get/route_manager.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter Email',
          'internet_exeption':
              "We're unable to show result\nPlease Check your data\nConnection",
          'general_exception':
              "We're unable to process your request\nPlease try again",
        },
        'ur_PK': {
          'email_hint': 'ای میل',
        }
      };
}
