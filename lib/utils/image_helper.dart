
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageHelper {
  static String getSourceByPng(
    String imageName, {
    String? customPath,
  }) {
    final String assetPath = customPath ?? 'assets/images/png/';

    return '$assetPath$imageName${imageName.endsWith('.png') ? '' : '.png'}';
  }

  static String getSourceBySvg(
    String imageName, {
    String? customPath,
  }) {
    final String assetPath = customPath ?? 'assets/images/svg/';

    return '$assetPath$imageName${imageName.endsWith('.svg') ? '' : '.svg'}';
  }

  /// Return [Image] widget if the image exists in assets folder.
  /// Otherwise, return null.
  static Future<Widget?> getAssetImage(String path) async {
    // check svg
    final String svgPath = getSourceBySvg(path);

    final bool isSvgExist = await _isImageAssetExist(svgPath);
    if (isSvgExist) {
      return SvgPicture.asset(svgPath);
    }

    // check png
    final String pngPath = getSourceByPng(path);

    final bool isPngExist = await _isImageAssetExist(pngPath);
    if (isPngExist) {
      return Image.asset(pngPath);
    }

    return null;
  }

  /// Check if image asset exists.
  static Future<bool> _isImageAssetExist(String path) async {
    try {
      await rootBundle.load(path);

      return true;
    } catch (e) {
      return false;
    }
  }
}
