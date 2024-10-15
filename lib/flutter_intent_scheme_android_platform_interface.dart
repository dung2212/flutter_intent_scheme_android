import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_intent_scheme_android_method_channel.dart';

abstract class FlutterIntentSchemeAndroidPlatform extends PlatformInterface {
  /// Constructs a FlutterIntentSchemeAndroidPlatform.
  FlutterIntentSchemeAndroidPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIntentSchemeAndroidPlatform _instance = MethodChannelFlutterIntentSchemeAndroid();

  /// The default instance of [FlutterIntentSchemeAndroidPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIntentSchemeAndroid].
  static FlutterIntentSchemeAndroidPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIntentSchemeAndroidPlatform] when
  /// they register themselves.
  static set instance(FlutterIntentSchemeAndroidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool> openApp(String url) async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
