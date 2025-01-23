import 'dart:async';

import 'package:agreya_coffee/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? buttonKeyString;

  /// Either [buttonText] or [customContent] must not be null.
  final String? buttonText;

  /// Either [buttonText] or [customContent] must not be null.
  final Widget? customContent;

  final VoidCallback? onPressed;

  final EdgeInsets? padding;

  /// Default [AppTextStyle.white_700_16]
  final TextStyle? textStyle;

  /// Default [AppColors.kOrangeF5A623]
  final Color? fillColor;

  /// Default [Colors.white]
  final Color? borderColor;

  /// Default 10.0
  final double? borderRadius;

  /// Default false
  /// Padding inside ElevatedButton
  final bool isZeroPadding;

  /// Width for button
  /// Leave it null for minimum size
  final double? width;

  const CustomButton({
    super.key,
    this.buttonKeyString,
    this.buttonText,
    this.customContent,
    required this.onPressed,
    this.padding,
    this.textStyle,
    this.fillColor,
    this.borderColor,
    this.borderRadius,
    this.isZeroPadding = false,
    this.width,
  }) : assert(buttonText != null || customContent != null);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: buttonKeyString != null ? Key(buttonKeyString!) : null,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: fillColor,
        backgroundColor: fillColor ?? AppColors.kOrangeF5A623,
        elevation: 0,
        splashFactory: NoSplash.splashFactory,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: isZeroPadding ? EdgeInsets.zero : null,
      ),
      child: Container(
        padding: padding,
        width: width,
        alignment: width != null ? Alignment.center : null,
        child: customContent ??
            Text(
              buttonText ?? '',
              style: textStyle ?? AppTextStyle.white_700_16,
            ),
      ),
    );
  }

  /// Secondary button -> white fill color with border
  factory CustomButton.secondary({
    String? buttonKeyString,
    String? buttonText,
    Widget? customContent,
    required VoidCallback onPressed,
    EdgeInsets? padding,
    TextStyle? textStyle,
    required Color borderColor,
    double? borderRadius,
    bool isZeroPadding = false,
    double? width,
  }) {
    return CustomButton(
      buttonKeyString: buttonKeyString,
      buttonText: buttonText,
      customContent: customContent,
      onPressed: onPressed,
      padding: padding,
      textStyle: textStyle,
      fillColor: Colors.white,
      borderColor: borderColor,
      borderRadius: borderRadius,
      isZeroPadding: isZeroPadding,
      width: width,
    );
  }
}

class CustomButtonWithCountdown extends StatefulWidget {
  final String? buttonKeyString;

  final String buttonText;

  final VoidCallback onPressed;

  final EdgeInsets? padding;

  /// Default [AppTextStyle.white_700_16]
  final TextStyle? textStyle;

  final TextStyle? disabledTextStyle;

  /// Default [AppColors.kGreen2BBE72]
  final Color? fillColor;

  final Color? disabledFillColor;

  /// Default [Colors.white]
  final Color? borderColor;

  /// Default 10.0.r
  final double? borderRadius;

  /// Default false
  /// Padding inside ElevatedButton
  final bool isZeroPadding;

  /// Width for button
  /// Leave it null for minimum size
  final double? width;

  final Duration duration;

  const CustomButtonWithCountdown({
    super.key,
    this.buttonKeyString,
    required this.buttonText,
    required this.onPressed,
    this.padding,
    this.textStyle,
    this.disabledTextStyle,
    this.fillColor,
    this.disabledFillColor,
    this.borderColor,
    this.borderRadius,
    this.isZeroPadding = false,
    this.width,
    required this.duration,
  });

  @override
  State<CustomButtonWithCountdown> createState() => _CustomButtonWithCountdownState();
}

class _CustomButtonWithCountdownState extends State<CustomButtonWithCountdown> {
  // add timer for buttonText
  late final Timer _timer;
  late int _start;
  late String _buttonTextWithCountdown;

  @override
  void initState() {
    super.initState();

    _start = widget.duration.inSeconds;
    _buttonTextWithCountdown = '${widget.buttonText} ($_start)';

    _startTimer();
  }

  void _startTimer() {
    const Duration oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
            _buttonTextWithCountdown = _start == 0 ? widget.buttonText : '${widget.buttonText} ($_start)';
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonKeyString: widget.buttonKeyString,
      buttonText: _buttonTextWithCountdown,
      onPressed: _start == 0 ? widget.onPressed : () {},
      padding: widget.padding,
      textStyle: _start == 0 ? widget.textStyle : widget.disabledTextStyle,
      fillColor: _start == 0 ? widget.fillColor : widget.disabledFillColor,
      borderColor: widget.borderColor,
      borderRadius: widget.borderRadius,
      isZeroPadding: widget.isZeroPadding,
      width: widget.width,
    );
  }
}
