/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/icon/icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [icon];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/7eleven.png
  AssetGenImage get a7eleven =>
      const AssetGenImage('assets/images/7eleven.png');

  /// File path: assets/images/7elevent_shop.png
  AssetGenImage get a7eleventShop =>
      const AssetGenImage('assets/images/7elevent_shop.png');

  /// File path: assets/images/allmember.png
  AssetGenImage get allmember =>
      const AssetGenImage('assets/images/allmember.png');

  /// File path: assets/images/app_store.png
  AssetGenImage get appStore =>
      const AssetGenImage('assets/images/app_store.png');

  /// File path: assets/images/background.jpg
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.jpg');

  /// File path: assets/images/cartoon-7eleven.png
  AssetGenImage get cartoon7eleven =>
      const AssetGenImage('assets/images/cartoon-7eleven.png');

  /// File path: assets/images/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/images/facebook.png');

  /// File path: assets/images/google-maps.png
  AssetGenImage get googleMaps =>
      const AssetGenImage('assets/images/google-maps.png');

  /// File path: assets/images/google-play-badge.png
  AssetGenImage get googlePlayBadge =>
      const AssetGenImage('assets/images/google-play-badge.png');

  /// File path: assets/images/line.png
  AssetGenImage get line => const AssetGenImage('assets/images/line.png');

  /// File path: assets/images/market.png
  AssetGenImage get market => const AssetGenImage('assets/images/market.png');

  /// File path: assets/images/qrcode.png
  AssetGenImage get qrcode => const AssetGenImage('assets/images/qrcode.png');

  /// File path: assets/images/reward_1.png
  AssetGenImage get reward1 =>
      const AssetGenImage('assets/images/reward_1.png');

  /// File path: assets/images/reward_2.png
  AssetGenImage get reward2 =>
      const AssetGenImage('assets/images/reward_2.png');

  /// File path: assets/images/reward_3.png
  AssetGenImage get reward3 =>
      const AssetGenImage('assets/images/reward_3.png');

  /// File path: assets/images/tiktok.png
  AssetGenImage get tiktok => const AssetGenImage('assets/images/tiktok.png');

  /// File path: assets/images/visblink.png
  AssetGenImage get visblink =>
      const AssetGenImage('assets/images/visblink.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        a7eleven,
        a7eleventShop,
        allmember,
        appStore,
        background,
        cartoon7eleven,
        facebook,
        googleMaps,
        googlePlayBadge,
        line,
        market,
        qrcode,
        reward1,
        reward2,
        reward3,
        tiktok,
        visblink
      ];
}

class MyAssets {
  const MyAssets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
