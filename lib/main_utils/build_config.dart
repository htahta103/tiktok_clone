import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../common/utils/utils_detail/bool_utils.dart';
import '../common/utils/utils_detail/string_utils.dart';
import '../common/values/assets.gen.dart';
import '../common_widget/log/log_util.dart';

class Flavor {
  static const String DEVELOPMENT = Assets.envEnvDev;
  static const String PRODUCTION = Assets.envEnvProd;
}

const kConnectTimeout = 30000;
const kReceiveTimeout = 90000;

class BuildConfig {
  final String baseUrl;
  final String baseshopBaseUrl, baseshopBaseUrlV1;
  final String baseshopCk;
  final String baseshopCs;
  final String hostUrl;
  final int connectTimeout;
  final int receiveTimeout;
  final String flavor;
  final Map<String, String> serverConfig;
  final Map<String, String> configs;
  final bool apiLog;

  BuildConfig._({
    required this.baseUrl,
    required this.connectTimeout,
    required this.receiveTimeout,
    required this.flavor,
    required this.serverConfig,
    required this.hostUrl,
    required this.baseshopBaseUrl,
    required this.baseshopBaseUrlV1,
    required this.baseshopCk,
    required this.baseshopCs,
    required this.configs,
    required this.apiLog,
  });

  BuildConfig._development()
      : this._(
          baseUrl: dotenv.env["TYPE.BASE_URL_API"].toString(),
          connectTimeout: kConnectTimeout,
          receiveTimeout: kReceiveTimeout,
          flavor: Flavor.DEVELOPMENT,
          serverConfig: {},
          hostUrl: dotenv.env["TYPE.HOST_URL"].toString(),
          baseshopBaseUrl: dotenv.env["TYPE.SHOP_BASE_URL"].toString(),
          baseshopBaseUrlV1: dotenv.env["TYPE.SHOP_BASE_URL_V1"].toString(),
          baseshopCk: dotenv.env["TYPE.SHOP_CK"].toString(),
          baseshopCs: dotenv.env["TYPE.SHOP_CS"].toString(),
          configs: dotenv.env,
          apiLog: BoolUtils.parseBool(dotenv.env["TYPE.LOG"].toString()),
        );

  BuildConfig._release()
      : this._(
          baseUrl: dotenv.env["TYPE.BASE_URL_API"].toString(),
          connectTimeout: kConnectTimeout,
          receiveTimeout: kReceiveTimeout,
          flavor: Flavor.PRODUCTION,
          serverConfig: {},
          hostUrl: dotenv.env["TYPE.HOST_URL"].toString(),
          baseshopBaseUrl: dotenv.env["YPE.SHOP_BASE_URL"].toString(),
          baseshopBaseUrlV1: dotenv.env["TYPE.SHOP_BASE_URL_V1"].toString(),
          baseshopCk: dotenv.env["TYPE.SHOP_CK"].toString(),
          baseshopCs: dotenv.env["TYPE.SHOP_CS"].toString(),
          configs: dotenv.env,
          apiLog: BoolUtils.parseBool(dotenv.env["TYPE.LOG"].toString()),
        );

  static BuildConfig _instance = BuildConfig._development();

  static Future<void> init({required String flavor}) async {
    await dotenv.load(fileName: flavor);
    await _iniLog(flavor);
    Log.printSimpleLog('        Build Flavor: $flavor         ');
    switch (flavor) {
      case Flavor.DEVELOPMENT:
        _instance = BuildConfig._development();
        break;
      case Flavor.PRODUCTION:
        _instance = BuildConfig._release();
        break;
      default:
        _instance = BuildConfig._release();
        break;
    }
  }

  static BuildConfig get() {
    return _instance;
  }

  static Future<void> _iniLog(flavor) async {
    switch (_instance.flavor) {
      case Flavor.DEVELOPMENT:
        await Log.init(isLog: true);
        break;
      case Flavor.PRODUCTION:
        await Log.init(isLog: false);
        break;
    }
  }

  static String flavorName() =>
      StringUtil.enumToName(_instance.flavor.toString());

  static bool isRelease() => _instance.flavor == Flavor.PRODUCTION;

  static bool isDevelopment() => _instance.flavor == Flavor.DEVELOPMENT;

  static bool isProduction() => _instance.flavor == Flavor.PRODUCTION;
}
