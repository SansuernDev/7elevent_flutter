import 'package:flutter/material.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/routes.dart';

class TextThemes {
  /// Main text theme

  static TextTheme get textTheme {
    return TextTheme(
      displayLarge: AppTextStyles.h1.copyWith(color: Colors.black, letterSpacing: 0), //h1
      displayMedium: AppTextStyles.h2.copyWith(color: Colors.black, letterSpacing: 0), //h2
      displaySmall: AppTextStyles.h3.copyWith(color: Colors.black, letterSpacing: 0), //h3
      headlineMedium: AppTextStyles.h4.copyWith(color: Colors.black, letterSpacing: 0), //h4

      titleMedium: AppTextStyles.subtitle.copyWith(color: Colors.black, letterSpacing: 0), //subtitle

      labelLarge: AppTextStyles.label1.copyWith(color: Colors.black, letterSpacing: 0), //label 1
      labelMedium: AppTextStyles.label2.copyWith(color: Colors.black, letterSpacing: 0), //label 2
      labelSmall: AppTextStyles.label3.copyWith(color: Colors.black, letterSpacing: 0), //label 3

      bodyLarge: AppTextStyles.body1.copyWith(color: Colors.black, letterSpacing: 0), //body 1
      bodyMedium: AppTextStyles.body2.copyWith(color: Colors.black, letterSpacing: 0), //body 2
      bodySmall: AppTextStyles.body3.copyWith(color: Colors.black, letterSpacing: 0), //body 3
    );
  }

  /// Dark text theme
  static TextTheme get darkTextTheme {
    return TextTheme(
      displayLarge: AppTextStyles.h1.copyWith(color: Colors.white, letterSpacing: 0), //h1
      displayMedium: AppTextStyles.h2.copyWith(color: Colors.white, letterSpacing: 0), //h2
      displaySmall: AppTextStyles.h3.copyWith(color: Colors.white, letterSpacing: 0), //h3
      headlineMedium: AppTextStyles.h4.copyWith(color: Colors.white, letterSpacing: 0), //h4

      titleMedium: AppTextStyles.subtitle.copyWith(color: Colors.white, letterSpacing: 0), //subtitle

      labelLarge: AppTextStyles.label1.copyWith(color: Colors.white, letterSpacing: 0), //label 1
      labelMedium: AppTextStyles.label2.copyWith(color: Colors.white, letterSpacing: 0), //label 2
      labelSmall: AppTextStyles.label3.copyWith(color: Colors.white, letterSpacing: 0), //label 3

      bodyLarge: AppTextStyles.body1.copyWith(color: Colors.white, letterSpacing: 0), //body 1
      bodyMedium: AppTextStyles.body2.copyWith(color: Colors.white, letterSpacing: 0), //body 2
      bodySmall: AppTextStyles.body3.copyWith(color: Colors.white, letterSpacing: 0), //body 3
    );
  }

  /// Primary text theme
  static TextTheme get primaryTextTheme {
    return TextTheme(
      displayLarge: AppTextStyles.h1.copyWith(color: Colors.black, letterSpacing: 0), //h1
      displayMedium: AppTextStyles.h2.copyWith(color: Colors.black, letterSpacing: 0), //h2
      displaySmall: AppTextStyles.h3.copyWith(color: Colors.black, letterSpacing: 0), //h3
      headlineMedium: AppTextStyles.h4.copyWith(color: Colors.black, letterSpacing: 0), //h4

      titleMedium: AppTextStyles.subtitle.copyWith(color: Colors.black, letterSpacing: 0), //subtitle

      labelLarge: AppTextStyles.label1.copyWith(color: Colors.black, letterSpacing: 0), //label 1
      labelMedium: AppTextStyles.label2.copyWith(color: Colors.black, letterSpacing: 0), //label 2
      labelSmall: AppTextStyles.label3.copyWith(color: Colors.black, letterSpacing: 0), //label 3

      bodyLarge: AppTextStyles.body1.copyWith(color: Colors.black, letterSpacing: 0), //body 1
      bodyMedium: AppTextStyles.body2.copyWith(color: Colors.black, letterSpacing: 0), //body 2
      bodySmall: AppTextStyles.body3.copyWith(color: Colors.black, letterSpacing: 0), //body 3
    );
  }
}

extension textThemeExtension on TextTheme {
  TextStyle hint({
    double height = 1,
    double fontSize = 10,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: Colors.black,
      fontWeight: fontWeight,
      fontFamily: GoogleFonts.lato().fontFamily,
      height: height,
    );
  }

  TextStyle hintBold() {
    return TextStyle(
      fontSize: 10,
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.lato().fontFamily,
    );
  }

  TextStyle popPins({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 8,
      color: color ?? Colors.black,
      // fontWeight: fontWeight ?? FontWeight.w900,
      fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.w700).fontFamily,
    );
  }

  // TextStyle hint() {
  //   return TextStyle(
  //     fontSize: 10,
  //     color: Colors.black,
  //     fontWeight: FontWeight.w400,
  //     fontFamily: GoogleFonts
  //         .lato()
  //         .fontFamily,
  //     height: 1,
  //   );
  // }
}


class AppTextStyles {
  /// Text style for body
  static TextStyle h1 = TextStyle(
    fontSize: 48,
    fontFamily: GoogleFonts.notoSansThai(fontWeight: FontWeight.w600, fontSize: 48).fontFamily,
  );

  static TextStyle h2 = TextStyle(
    fontSize: 32,
    fontFamily: GoogleFonts.notoSansThai(fontWeight: FontWeight.w600, fontSize: 32).fontFamily,
  );

  static TextStyle h3 = TextStyle(
    fontSize: 24,
    fontFamily: GoogleFonts.notoSansThai(fontWeight: FontWeight.w600, fontSize: 24).fontFamily,
  );

  static TextStyle h4 = TextStyle(
    fontSize: 20,
    fontFamily: GoogleFonts.notoSansThai(fontWeight: FontWeight.w600, fontSize: 20).fontFamily,
  );

  /// Text style for heading

  static TextStyle subtitle = TextStyle(
    fontFamily: GoogleFonts.notoSansThai(fontWeight: FontWeight.w400, fontSize: 20).fontFamily,
  );

  static TextStyle label1 = TextStyle(
    fontSize: 16,
    fontFamily: GoogleFonts.notoSansThai(fontWeight: FontWeight.w700, fontSize: 16).fontFamily,
  );

  static TextStyle label2 = TextStyle(
    fontSize: 14,
    fontFamily: GoogleFonts.notoSansThai(fontWeight: FontWeight.w700, fontSize: 14).fontFamily,
  );

  static TextStyle label3 = TextStyle(
    fontSize: 12,
    fontFamily: GoogleFonts.notoSansThai(fontWeight: FontWeight.w700, fontSize: 12).fontFamily,
  );

  static TextStyle body1 = TextStyle(
    fontSize: 16,
    fontFamily: GoogleFonts.notoSansThai(fontWeight: FontWeight.w400, fontSize: 16).fontFamily,
  );

  static TextStyle body2 = TextStyle(
    fontSize: 14,
    fontFamily: GoogleFonts.notoSansThai(fontWeight: FontWeight.w400, fontSize: 14).fontFamily,
  );

  static TextStyle body3 = TextStyle(
    fontSize: 12,
    fontFamily: GoogleFonts.notoSansThai(fontWeight: FontWeight.w400, fontSize: 12).fontFamily,
  );

  static const TextStyle defaultTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle appBarTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Colors.black,
  );
  static const TextStyle headerTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.black,
    fontSize: 14,
  );
  static const TextStyle smallTextStyle = TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );
  static TextStyle subtitleTextStyle1 = TextStyle(
    color: rootContext()!.appColors.subTitle,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  static TextStyle subtitleTextStyle2 = TextStyle(
    fontSize: 12,
    color: rootContext()!.appColors.subTitle,
    fontWeight: FontWeight.w400,
  );
  static TextStyle subtitleTextStyle2Underlined = TextStyle(
    fontSize: 12,
    color: rootContext()!.appColors.subTitle,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.underline,
  );
  static TextStyle subtitleTextStyle3 = TextStyle(
    fontSize: 12,
    color: rootContext()!.appColors.error1,
    fontWeight: FontWeight.w400,
  );
  static TextStyle recognizerTextStyle = TextStyle(
    color: rootContext()!.appColors.secondary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}


extension ContextExtensionss on BuildContext {
  /// The same of [MediaQuery.of(context).size]
  Size get mediaQuerySize => MediaQuery.of(this).size;

  /// The same of [MediaQuery.of(context).size.height]
  /// Note: updates when you rezise your screen (like on a browser or
  /// desktop window)
  double get height => mediaQuerySize.height;

  /// The same of [MediaQuery.of(context).size.width]
  /// Note: updates when you rezise your screen (like on a browser or
  /// desktop window)
  double get width => mediaQuerySize.width;

  /// Gives you the power to get a portion of the height.
  /// Useful for responsive applications.
  ///
  /// [dividedBy] is for when you want to have a portion of the value you
  /// would get like for example: if you want a value that represents a third
  /// of the screen you can set it to 3, and you will get a third of the height
  ///
  /// [reducedBy] is a percentage value of how much of the height you want
  /// if you for example want 46% of the height, then you reduce it by 56%.
  double heightTransformer({double dividedBy = 1, double reducedBy = 0.0}) {
    return (mediaQuerySize.height -
        ((mediaQuerySize.height / 100) * reducedBy)) /
        dividedBy;
  }

  /// Gives you the power to get a portion of the width.
  /// Useful for responsive applications.
  ///
  /// [dividedBy] is for when you want to have a portion of the value you
  /// would get like for example: if you want a value that represents a third
  /// of the screen you can set it to 3, and you will get a third of the width
  ///
  /// [reducedBy] is a percentage value of how much of the width you want
  /// if you for example want 46% of the width, then you reduce it by 56%.
  double widthTransformer({double dividedBy = 1, double reducedBy = 0.0}) {
    return (mediaQuerySize.width - ((mediaQuerySize.width / 100) * reducedBy)) /
        dividedBy;
  }

  /// Divide the height proportionally by the given value
  double ratio({
    double dividedBy = 1,
    double reducedByW = 0.0,
    double reducedByH = 0.0,
  }) {
    return heightTransformer(dividedBy: dividedBy, reducedBy: reducedByH) /
        widthTransformer(dividedBy: dividedBy, reducedBy: reducedByW);
  }

  /// similar to [MediaQuery.of(context).padding]
  ThemeData get theme => Theme.of(this);

  /// Check if dark mode theme is enable
  bool get isDarkMode => (theme.brightness == Brightness.dark);

  /// give access to Theme.of(context).iconTheme.color
  Color? get iconColor => theme.iconTheme.color;

  /// similar to [MediaQuery.of(context).padding]
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// similar to [MediaQuery.of(context).padding]
  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  /// similar to [MediaQuery.of(context).padding]
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// similar to [MediaQuery.of(context).viewPadding]
  EdgeInsets get mediaQueryViewPadding => MediaQuery.of(this).viewPadding;

  /// similar to [MediaQuery.of(context).viewInsets]
  EdgeInsets get mediaQueryViewInsets => MediaQuery.of(this).viewInsets;

  /// similar to [MediaQuery.of(context).orientation]
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// check if device is on landscape mode
  bool get isLandscape => orientation == Orientation.landscape;

  /// check if device is on portrait mode
  bool get isPortrait => orientation == Orientation.portrait;

  /// similar to [MediaQuery.of(this).devicePixelRatio]
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  /// similar to [MediaQuery.of(this).textScaleFactor]
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  /// get the shortestSide from screen
  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;

  /// True if width be larger than 800
  bool get showNavbar => (width > 800);

  /// True if the shortestSide is smaller than 600p
  bool get isPhone => (mediaQueryShortestSide < 600);

  /// True if the shortestSide is largest than 600p
  bool get isSmallTablet => (mediaQueryShortestSide >= 600);

  /// True if the shortestSide is largest than 720p
  bool get isLargeTablet => (mediaQueryShortestSide >= 720);

  /// True if the current device is Tablet
  bool get isTablet => isSmallTablet || isLargeTablet;

  /// Returns a specific value according to the screen size
  /// if the device width is higher than or equal to 1200 return
  /// [desktop] value. if the device width is higher than  or equal to 600
  /// and less than 1200 return [tablet] value.
  /// if the device width is less than 300  return [watch] value.
  /// in other cases return [mobile] value.
  T responsiveValue<T>({
    T? mobile,
    T? tablet,
    T? desktop,
    T? watch,
  }) {
    var deviceWidth = mediaQuerySize.shortestSide;
    if (GetPlatform.isDesktop) {
      deviceWidth = mediaQuerySize.width;
    }
    if (deviceWidth >= 1200 && desktop != null) {
      return desktop;
    } else if (deviceWidth >= 600 && tablet != null) {
      return tablet;
    } else if (deviceWidth < 300 && watch != null) {
      return watch;
    } else {
      return mobile!;
    }
  }
}

