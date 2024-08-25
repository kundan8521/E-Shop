import 'package:firebase_remote_config/firebase_remote_config.dart';

Future<bool> getDisplayDiscountedPrice() async {
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setDefaults(<String, dynamic>{
    'display_discounted_price': false,
  });
  await remoteConfig.fetchAndActivate();
  return remoteConfig.getBool('display_discounted_price');
}
