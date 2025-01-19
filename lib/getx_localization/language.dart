import 'package:get/route_manager.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter Email',
        },
        'ur_PK': {
          'email_hint': 'ای میل',
        }
      };
}
