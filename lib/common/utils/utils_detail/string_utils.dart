class StringUtil {
  StringUtil._();

  static String enumToName(String enumToString) {
    final List<String> paths = enumToString.split('.');
    return paths[1];
  }
}
