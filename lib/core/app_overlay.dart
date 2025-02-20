import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AppSystemUiStyleOverlay extends SystemUiOverlayStyle {
  const AppSystemUiStyleOverlay.light({
    super.statusBarBrightness = Brightness.dark,
    super.statusBarIconBrightness = Brightness.light,
  });

  const AppSystemUiStyleOverlay.dark({
    super.statusBarBrightness = Brightness.light,
    super.statusBarIconBrightness = Brightness.dark,
  });
}


class AppAnnotatedRegionOverlay extends StatelessWidget {
  const AppAnnotatedRegionOverlay({
    super.key,
    required this.child,
    this.systemUiOverlayStyle = const AppSystemUiStyleOverlay.light(),
  });

  const AppAnnotatedRegionOverlay.light({
    super.key,
    required this.child,
    this.systemUiOverlayStyle = const AppSystemUiStyleOverlay.light(),
  });

  const AppAnnotatedRegionOverlay.dark({
    super.key,
    required this.child,
    this.systemUiOverlayStyle = const AppSystemUiStyleOverlay.dark(),
  });

  final Widget child;

  final SystemUiOverlayStyle systemUiOverlayStyle;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: systemUiOverlayStyle,
      child: child,
    );
  }
}


