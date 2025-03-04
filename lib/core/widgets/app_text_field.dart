import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/utils/size.dart';

class AppTextField extends StatelessWidget {
  final bool autoFocus;
  final String? hintText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String)? onSubmitted;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatter;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? Function(BuildContext, {required int currentLength, required bool isFocused, required int? maxLength})? buildCounter;
  final Color? fillColor;
  final BoxConstraints? suffixIconConstraints;
  final BoxConstraints? prefixIconConstraints;
  final double borderRadius;
  final Color? enabledBorderColor;
  final Color? disableBorderColor;
  final Color? focusBorderColor;
  final int maxLine;
  final int maxLength;
  final bool enabled;
  final bool obscureText;
  final String? prefixText;
  final TextStyle? prefixStyle;
  final String? label;
  final bool isRequired;
  final String? errorText;

  const AppTextField({
    super.key,
    this.hintText,
    this.controller,
    this.focusNode,
    this.contentPadding,
    this.onSubmitted,
    this.onChanged,
    this.textInputAction,
    this.textInputType,
    this.inputFormatter,
    this.suffixIcon,
    this.fillColor,
    this.suffixIconConstraints,
    this.borderRadius = 8,
    this.enabledBorderColor,
    this.disableBorderColor,
    this.focusBorderColor,
    this.maxLine = 1,
    this.maxLength = 120,
    this.enabled = true,
    this.obscureText = false,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.buildCounter,
    this.prefixText,
    this.prefixStyle,
    this.autoFocus = false,
    this.label,
    this.isRequired = false,
    this.errorText,
  });

  /// Named constructor `.label` for adding a label above the text field.
  const AppTextField.label({
    super.key,
    required this.label,
    this.isRequired = true,
    this.hintText,
    this.controller,
    this.focusNode,
    this.contentPadding,
    this.onSubmitted,
    this.onChanged,
    this.textInputAction,
    this.textInputType,
    this.inputFormatter,
    this.suffixIcon,
    this.fillColor,
    this.suffixIconConstraints,
    this.borderRadius = 8,
    this.enabledBorderColor,
    this.disableBorderColor,
    this.focusBorderColor,
    this.maxLine = 1,
    this.maxLength = 120,
    this.enabled = true,
    this.obscureText = false,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.buildCounter,
    this.prefixText,
    this.prefixStyle,
    this.autoFocus = false,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                if (isRequired)
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Text(
                      "*",
                      style: context.textTheme.bodyMedium?.apply(color: Color(0xFFFF4D4F)),
                    ),
                  ),
                Text(
                  label!,
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        TextField(
          controller: controller,
          focusNode: focusNode,
          style: context.textTheme.bodyMedium?.apply(color: enabled ? context.appColors.black : context.appColors.secondaryText),
          onSubmitted: onSubmitted,
          maxLines: maxLine,
          onChanged: onChanged,
          cursorColor: context.appColors.secondary,
          autofocus: autoFocus,
          maxLength: maxLength,
          enabled: enabled,
          obscureText: obscureText,
          scrollPadding: const EdgeInsets.only(bottom: 40),
          keyboardType: textInputType,
          textInputAction: textInputAction,
          inputFormatters: inputFormatter,
          buildCounter: buildCounter,
          decoration: InputDecoration(
            errorText: errorText,
            errorStyle: context.textTheme.bodySmall?.apply(color: context.appColors.error1),
            isDense: true,
            prefixText: prefixText,
            prefixStyle: prefixStyle,
            hintText: hintText ?? 'ข้อมูล',
            prefixIcon: prefixIcon,
            prefixIconConstraints: prefixIconConstraints ??
                const BoxConstraints(
                  minWidth: 2,
                  minHeight: 2,
                ),
            hintStyle: context.textTheme.bodyMedium?.apply(color: context.appColors.secondaryText),
            contentPadding: contentPadding ??
                 EdgeInsets.symmetric(
                  horizontal: isMacbook ? 14 :12,
                  vertical: isMacbook ? 12 : 8.5,
                ),
            filled: true,
            counterText: buildCounter != null ? null : "",
            fillColor: fillColor ?? Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: enabledBorderColor ?? context.appColors.btnDisable,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: focusBorderColor ?? context.appColors.secondary,
                width: 1,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: disableBorderColor ?? context.appColors.btnDisable,
                width: 1,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: context.appColors.error1,
                width: 1,
              ),
            ),
            suffixIcon: suffixIcon,
            suffixIconConstraints: suffixIconConstraints ??
                const BoxConstraints(
                  minWidth: 2,
                  minHeight: 2,
                ),
          ),
        ),
      ],
    );
  }
}

class TextFieldWithCancel extends HookWidget {
  final String hintText;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final void Function()? onFocus;

  const TextFieldWithCancel({
    required this.hintText,
    required this.controller,
    this.onFocus,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = useFocusNode();
    useListenableSelector(
      controller,
      () => controller.text,
    );
    focusNode.addListener(() => onFocus?.call());

    final isEmpty = controller.text.isEmpty;
    return AppTextField(
      onChanged: onChanged,
      hintText: hintText,
      controller: controller,
      suffixIcon: isEmpty
          ? null
          : InkWell(
              onTap: () {
                controller.clear();
                onChanged?.call("");
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.cancel_rounded),
              ),
            ),
    );
  }
}
