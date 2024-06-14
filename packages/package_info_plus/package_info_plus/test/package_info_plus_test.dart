import 'package:flutter_test/flutter_test.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:package_info_plus/package_info_plus_platform_interface.dart';
import 'package:package_info_plus/package_info_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPackageInfoPlusPlatform
    with MockPlatformInterfaceMixin
    implements PackageInfoPlusPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PackageInfoPlusPlatform initialPlatform = PackageInfoPlusPlatform.instance;

  test('$MethodChannelPackageInfoPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPackageInfoPlus>());
  });

  test('getPlatformVersion', () async {
    PackageInfoPlus packageInfoPlusPlugin = PackageInfoPlus();
    MockPackageInfoPlusPlatform fakePlatform = MockPackageInfoPlusPlatform();
    PackageInfoPlusPlatform.instance = fakePlatform;

    expect(await packageInfoPlusPlugin.getPlatformVersion(), '42');
  });
}
