import 'package:flutter/material.dart';

/// Provides a [light] and a [dark] theme ([ThemeData]).
///
/// This class is abstract so it cannot be instantiated.
/// In reality, this class is an equivalent to [ThemeData], not [Theme].
abstract class WanikaniTheme {
  static final _lightRoles = WanikaniLightThemeRoles(),
      _darkRoles = WanikaniDarkThemeRoles();

  static final _lightTheme = ThemeData.light(), _darkTheme = ThemeData.dark();

  static ThemeData light() => _merge(_lightTheme, _lightRoles);

  static ThemeData dark() => _merge(_darkTheme, _darkRoles);

  static ThemeData _merge(ThemeData original, WanikaniThemeRoles roles) =>
      original.copyWith(
        colorScheme: roles.colorScheme,
        brightness: roles.brightness,
        primaryColor: roles.primary,
        accentColor: roles.secondary,

        /// canvasColor: roles.canvas,
        /// shadowColor: roles.shadow,
        /// scaffoldBackgroundColor: roles.scaffoldBackground,
        /// bottomAppBarColor: roles.bottomAppBar,
        /// cardColor: roles.card,
        /// dividerColor: roles.divider,
        /// toggleableActiveColor: roles.toggleableActive,
        /// focusColor: roles.focus,
        /// hoverColor: roles.hover,
        /// highlightColor: roles.highlight,
        /// splashColor: roles.splash,
        /// errorColor: roles.error,
        /// selectedRowColor: roles.selectedRow,
        /// unselectedWidgetColor: roles.unselectedWidget,
        /// disabledColor: roles.disabled,
        /// buttonColor: roles.button,
        /// textSelectionTheme: roles.textSelection,
        /// textButtonTheme: TextButtonThemeData(style: roles.textButton),
        /// elevatedButtonTheme:
        ///     ElevatedButtonThemeData(style: roles.elevatedButton),
        /// outlinedButtonTheme:
        ///     OutlinedButtonThemeData(style: roles.outlinedButton),
        /// switchTheme: roles.switchTheme,
        /// navigationRailTheme: roles.navigationRail,
        /// floatingActionButtonTheme: roles.floatingActionButton,
      );
}

abstract class WanikaniThemeRoles {
  ColorScheme get colorScheme => ColorScheme(
        primary: primary,
        primaryVariant: primary,
        secondary: secondary,
        secondaryVariant: secondary,
        surface: lightText,
        background: background,
        error: error,
        onPrimary: lightText,
        onSecondary: lightText,
        onSurface: darkText,
        onBackground: darkText,
        onError: lightText,
        brightness: brightness,
      );

  Brightness get brightness;

  final Color primary = const Color(0xffff00aa);
  final Color primaryDark = const Color(0xff252A3A);
  final Color secondary = const Color(0xff00aaff);
  final Color background = const Color(0xffeee);

  final Color apprentice = const Color(0xffdd0093);
  final Color guru = const Color(0xff882d9e);
  final Color master = const Color(0xff294ddb);
  final Color enlightened = const Color(0xff0093dd);
  final Color burned = const Color(0xff434343);

  final Color success = const Color(0xff88cc00);
  final Color error = const Color(0xfff03);

  final Color lightText = Colors.white;
  final Color darkText = Colors.black;
}

class WanikaniLightThemeRoles extends WanikaniThemeRoles {
  @override
  final Brightness brightness = Brightness.light;
}

class WanikaniDarkThemeRoles extends WanikaniThemeRoles {
  @override
  final Brightness brightness = Brightness.dark;
}
