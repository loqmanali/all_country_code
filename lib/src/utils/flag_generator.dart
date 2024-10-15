// lib/src/utils/flag_generator.dart

class FlagGenerator {
  static String generateFlag(String isoCode) {
    if (isoCode.isEmpty) return '';
    return isoCode.toUpperCase().split('').map((char) {
      if (char.codeUnitAt(0) >= 65 && char.codeUnitAt(0) <= 90) {
        // If it's an uppercase letter A-Z, convert to regional indicator symbol
        return String.fromCharCode(char.codeUnitAt(0) + 127397);
      } else {
        // For any other character, return it as is
        return char;
      }
    }).join();
  }

  static String generateFlagForWeb(String isoCode) {
    return generateFlag(isoCode);
  }
}
