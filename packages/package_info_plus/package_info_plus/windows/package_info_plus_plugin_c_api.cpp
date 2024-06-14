#include "include/package_info_plus/package_info_plus_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "package_info_plus_plugin.h"

void PackageInfoPlusPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  package_info_plus::PackageInfoPlusPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
