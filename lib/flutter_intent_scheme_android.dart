import 'flutter_intent_scheme_android_platform_interface.dart';

class FlutterIntentSchemeAndroid {
  Future<String?> getPlatformVersion() {
    return FlutterIntentSchemeAndroidPlatform.instance.getPlatformVersion();
  }

  static Future<bool> openApp(String url) {
    return FlutterIntentSchemeAndroidPlatform.instance.openApp(url);
  }
}
