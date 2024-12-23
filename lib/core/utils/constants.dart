import 'package:flutter/foundation.dart';

class Constants {
  static const String empty = "";
  static const Duration connectTimeout = kDebugMode
      ? Duration(milliseconds: 900000)
      : Duration(milliseconds: 900000);
  static bool hideForIos = true;
  static String appVersion = "1.0.0";
  static String appName = "Prestige";

  static String agoraAppId = 'b9b56a51aa164d0cb4756de02cac53b2';
}
