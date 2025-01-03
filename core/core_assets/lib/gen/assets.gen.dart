/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/beautiful-indian-girl-white-sweater_146105-52107.avif
  String get beautifulIndianGirlWhiteSweater14610552107 =>
      'packages/core_assets/assets/png/beautiful-indian-girl-white-sweater_146105-52107.avif';

  /// List of all assets
  List<String> get values => [beautifulIndianGirlWhiteSweater14610552107];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/aircraft.svg
  String get aircraft => 'packages/core_assets/assets/svg/aircraft.svg';

  /// File path: assets/svg/apple.svg
  String get apple => 'packages/core_assets/assets/svg/apple.svg';

  /// File path: assets/svg/bag.svg
  String get bag => 'packages/core_assets/assets/svg/bag.svg';

  /// File path: assets/svg/beach.svg
  String get beach => 'packages/core_assets/assets/svg/beach.svg';

  /// File path: assets/svg/binocular.svg
  String get binocular => 'packages/core_assets/assets/svg/binocular.svg';

  /// File path: assets/svg/campfire.svg
  String get campfire => 'packages/core_assets/assets/svg/campfire.svg';

  /// File path: assets/svg/clock.svg
  String get clock => 'packages/core_assets/assets/svg/clock.svg';

  /// File path: assets/svg/comapss.svg
  String get comapss => 'packages/core_assets/assets/svg/comapss.svg';

  /// File path: assets/svg/face_savoring_food.svg
  String get faceSavoringFood =>
      'packages/core_assets/assets/svg/face_savoring_food.svg';

  /// File path: assets/svg/family.svg
  String get family => 'packages/core_assets/assets/svg/family.svg';

  /// File path: assets/svg/fuji.svg
  String get fuji => 'packages/core_assets/assets/svg/fuji.svg';

  /// File path: assets/svg/girl.svg
  String get girl => 'packages/core_assets/assets/svg/girl.svg';

  /// File path: assets/svg/hot_money.svg
  String get hotMoney => 'packages/core_assets/assets/svg/hot_money.svg';

  /// File path: assets/svg/lighthouse.svg
  String get lighthouse => 'packages/core_assets/assets/svg/lighthouse.svg';

  /// File path: assets/svg/love_face.svg
  String get loveFace => 'packages/core_assets/assets/svg/love_face.svg';

  /// File path: assets/svg/money_mouth.svg
  String get moneyMouth => 'packages/core_assets/assets/svg/money_mouth.svg';

  /// File path: assets/svg/phone.svg
  String get phone => 'packages/core_assets/assets/svg/phone.svg';

  /// File path: assets/svg/piggy_bank.svg
  String get piggyBank => 'packages/core_assets/assets/svg/piggy_bank.svg';

  /// File path: assets/svg/pyramid.svg
  String get pyramid => 'packages/core_assets/assets/svg/pyramid.svg';

  /// File path: assets/svg/shoe.svg
  String get shoe => 'packages/core_assets/assets/svg/shoe.svg';

  /// File path: assets/svg/sneezing.svg
  String get sneezing => 'packages/core_assets/assets/svg/sneezing.svg';

  /// File path: assets/svg/sunglass.svg
  String get sunglass => 'packages/core_assets/assets/svg/sunglass.svg';

  /// File path: assets/svg/tower_of_pissa.svg
  String get towerOfPissa =>
      'packages/core_assets/assets/svg/tower_of_pissa.svg';

  /// File path: assets/svg/tree.svg
  String get tree => 'packages/core_assets/assets/svg/tree.svg';

  /// File path: assets/svg/trunks.svg
  String get trunks => 'packages/core_assets/assets/svg/trunks.svg';

  /// File path: assets/svg/watch.svg
  String get watch => 'packages/core_assets/assets/svg/watch.svg';

  /// File path: assets/svg/yatch.svg
  String get yatch => 'packages/core_assets/assets/svg/yatch.svg';

  /// List of all assets
  List<String> get values => [
        aircraft,
        apple,
        bag,
        beach,
        binocular,
        campfire,
        clock,
        comapss,
        faceSavoringFood,
        family,
        fuji,
        girl,
        hotMoney,
        lighthouse,
        loveFace,
        moneyMouth,
        phone,
        piggyBank,
        pyramid,
        shoe,
        sneezing,
        sunglass,
        towerOfPissa,
        tree,
        trunks,
        watch,
        yatch
      ];
}

class $AssetsWebpGen {
  const $AssetsWebpGen();

  /// File path: assets/webp/cover-photo-2.webp
  AssetGenImage get coverPhoto2 =>
      const AssetGenImage('assets/webp/cover-photo-2.webp');

  /// File path: assets/webp/cover-photo.webp
  AssetGenImage get coverPhoto =>
      const AssetGenImage('assets/webp/cover-photo.webp');

  /// List of all assets
  List<AssetGenImage> get values => [coverPhoto2, coverPhoto];
}

class Assets {
  Assets._();

  static const String package = 'core_assets';

  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
  static const $AssetsWebpGen webp = $AssetsWebpGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  static const String package = 'core_assets';

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
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    FilterQuality filterQuality = FilterQuality.low,
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
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/core_assets/$_assetName';
}
