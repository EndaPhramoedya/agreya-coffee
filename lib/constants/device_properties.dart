import 'package:flutter/material.dart';

// Contains device properties from MediaQuery

// Size in logical pixels
late Size kDeviceSize;
late double kDeviceLogicalWidth;
late double kDeviceLogicalHeight;
late double kTopPadding;
late double kBottomPadding;

// Size in physical pixels
late double kDevicePhysicalWidth;
late double kDevicePhysicalHeight;

late double kDevicePixelRatio;

// To check if device is tablet size or phone size
bool isTablet = false;
