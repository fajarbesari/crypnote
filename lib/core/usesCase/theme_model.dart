import '../utils/logging.dart';
import '../../services/preferences.dart';
import '../locator_service.dart';

class ThemeModel {
  final Preferences _prefs = locator<Preferences>();

  final String _themeModeKey = 'themeMode';

  late CrypnoteThemeMode currentMode;

  // initialize thememode from secure storage
  Future<CrypnoteThemeMode> initialize() async {
    final themeModeString = await _prefs.get(_themeModeKey);

    // if no exist, return default
    if (themeModeString == null || themeModeString.isEmpty) {
      currentMode = CrypnoteThemeMode.light;
      await _prefs.send(_themeModeKey, currentMode.name);
      return currentMode;
    }

    currentMode = CrypnoteThemeMode.fromString(themeModeString);

    return currentMode;
  }

  // create toogle theme and persisted to secure storage
  // depends on platform brightness
  Future<CrypnoteThemeMode> toggleTheme() async {
    switch (currentMode) {
      case CrypnoteThemeMode.light:
        currentMode = CrypnoteThemeMode.dark;
        break;
      case CrypnoteThemeMode.dark:
        currentMode = CrypnoteThemeMode.light;
        break;
    }

    // store to secure storage
    await _prefs.send(_themeModeKey, currentMode.name);

    Logging.messages('stored current theme', LoggingInfo.SUCCESS);

    return currentMode;
  }
}

// an enum to be saved in the secure storage
enum CrypnoteThemeMode {
  light,
  dark;

  const CrypnoteThemeMode();

  static CrypnoteThemeMode fromString(String value) {
    return CrypnoteThemeMode.values.firstWhere(
      (theme) => theme.name == value,
      orElse: () => CrypnoteThemeMode.light,
    );
  }
}
