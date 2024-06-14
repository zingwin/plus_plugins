import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package_info_plus_platform_interface.dart';

/// An implementation of [PackageInfoPlusPlatform] that uses method channels.
class MethodChannelPackageInfoPlus extends PackageInfoPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('package_info_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
