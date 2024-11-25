import 'package:church_mobile/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxlines;
  const AppTextFormField({
    super.key,
    this.keyboardType,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.maxLength,
    this.maxlines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      maxLength: maxLength,
      maxLines: maxlines,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff6A9AFB),
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(25.r),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff6A9AFB),
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(25.r),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(25.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(25.r),
        ),
        labelText: hintText,
        labelStyle: AppTextStyles.bodyRegular16
            .copyWith(color: const Color(0xffAFC7F8)),
        floatingLabelStyle: AppTextStyles.bodyRegular16
            .copyWith(color: const Color(0xff6A9AFB)),
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? Color(0xffF7FAFF),
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: AppTextStyles.bodyRegular16,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
