import 'package:church_mobile/core/constants/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'features/auth/data/model/auth_model.dart';

class HiveSetup {
  static Future<void> initialize() async {
    await Hive.initFlutter();

    // Register Hive Adapters
    Hive.registerAdapter(AuthModelAdapter());

    // Open required boxes
    await Hive.openBox<AuthModel>(kUsertBox);
  }
}


//~ flutter pub run build_runner build
//~ This command scans for annotated classes (e.g., @HiveType) 
//~ and generates the necessary code for Hive to handle