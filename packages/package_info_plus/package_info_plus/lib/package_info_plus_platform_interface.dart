import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package_info_plus_method_channel.dart';

abstract class PackageInfoPlusPlatform extends PlatformInterface {
  /// Constructs a PackageInfoPlusPlatform.
  PackageInfoPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static PackageInfoPlusPlatform _instance = MethodChannelPackageInfoPlus();

  /// The default instance of [PackageInfoPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelPackageInfoPlus].
  static PackageInfoPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PackageInfoPlusPlatform] when
  /// they register themselves.
  static set instance(PackageInfoPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
