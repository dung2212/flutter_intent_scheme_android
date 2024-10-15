import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_intent_scheme_android_platform_interface.dart';

/// An implementation of [FlutterIntentSchemeAndroidPlatform] that uses method channels.
class MethodChannelFlutterIntentSchemeAndroid extends FlutterIntentSchemeAndroidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_intent_scheme_android');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool> openApp(String url) async {
    try {
      return await methodChannel.invokeMethod('openApplication', {'data': url});
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
    return false;
  }
}
