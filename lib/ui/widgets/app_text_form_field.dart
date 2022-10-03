import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/color.dart';
import 'dart:developer' as developer;

class AppTextFormField extends FormField<String> {
  final TextEditingController? textEditingController;
  final bool obscureText;

  AppTextFormField({
    bool usePhone = false,
    String? value,
    FocusNode? focusNode,
    Key? key,
    String? initialValue,
    String? title,
    String? labelText,
    Widget? action,
    String? hint,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    bool autoValidate = false,
    bool enabled = true,
    bool selected = false,
    bool readOnly = false,
    Widget? suffix,
    Widget? icon,
    Widget? prefix,
    bool filled = false,
    AutovalidateMode? autovalidateMode,
    this.obscureText = true,
    this.textEditingController,
    bool isPassword = false,
    TextInputType? inputType,
    List<TextInputFormatter>? inputFormatters,
    int? maxLength,
    int? maxLine,
    onTap,
    bool myAutoValidate = false,
    bool alwaysValidate = false,
    ValueChanged<String>? onChanged,
    ValueChanged<bool>? onFocusChange,
    int? minLines,
    bool? autoFocus,
    TextStyle? hintStyle,
    Color? backgroundColor,
    double? paddingHorizontal,
    double? paddingVertical,
    InputBorder? border,
    InputBorder? enabledBorder,
    InputBorder? focusedErrorBorder,
    InputBorder? focusedBorder,
    InputBorder? disabledBorder,
    InputBorder? errorBorder,
  }) : super(
            key: key,
            validator: validator,
            onSaved: onSaved,
            initialValue: initialValue,
            autovalidateMode: alwaysValidate
                ? AutovalidateMode.always
                : myAutoValidate
                    ? AutovalidateMode.onUserInteraction
                    : AutovalidateMode.disabled,
            builder: (FormFieldState field) {
              AppTextFormFieldState state = field as AppTextFormFieldState;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: Theme.of(state.context).textTheme.bodyText1,
                          ),
                          if (action != null) action
                        ],
                      ),
                    ),
                  Focus(
                    onFocusChange: (hasFocus) {
                      if (onFocusChange != null) {
                        onFocusChange(hasFocus);
                      }
                    },
                    child: TextField(
                      key: key,
                      focusNode: focusNode,
                      readOnly: readOnly,
                      minLines: minLines ?? 1,
                      maxLines: maxLine,
                      autofocus: autoFocus ?? false,
                      cursorColor: Colors.black,
                      controller: state.textEditingController,
                      obscureText: isPassword ? state._obscureText : false,
                      style: Theme.of(state.context).textTheme.bodyText1,
                      keyboardType: inputType,
                      inputFormatters: [
                        ...inputFormatters ?? [],
                        LengthLimitingTextInputFormatter(maxLength),
                      ],
                      onChanged: (text) {
                        state.didChange(text);
                        if (onChanged != null) {
                          onChanged(text);
                        }
                      },
                      decoration: const InputDecoration().applyDefaults(Theme.of(state.context).inputDecorationTheme).copyWith(
                          suffixIcon: suffix,
                          prefixIcon: prefix,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: paddingHorizontal ?? 14,
                              vertical: 16),
                          fillColor:
                              backgroundColor ?? ColorConstants.greyBorderColor,
                          hintText: hint,
                          hintStyle: hintStyle ??
                              Theme.of(state.context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: ColorConstants.grayText),
                          labelText: labelText,
                          errorText: state.errorText,
                          enabled: enabled,
                          counterStyle: const TextStyle(height: 0, fontSize: 0),
                          border: border ??
                              OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: ColorConstants.blackOpacity10,
                                      width: 0)),
                          enabledBorder: enabledBorder ??
                              OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: ColorConstants.transparent,
                                      width: 0)),
                          focusedBorder: focusedBorder ??
                              OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: ColorConstants.transparent,
                                      width: 0)),
                          disabledBorder: disabledBorder ?? OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: ColorConstants.transparent, width: 0)),
                          errorBorder: errorBorder ?? OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: ColorConstants.transparent, width: 0)),
                          focusedErrorBorder: focusedBorder ?? OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: ColorConstants.transparent, width: 0))),
                    ),
                  ),
                ],
              );
            });

  @override
  AppTextFormFieldState createState() => AppTextFormFieldState();
}

class AppTextFormFieldState extends FormFieldState<String> {
  late TextEditingController textEditingController;

  late bool _obscureText;

  void onChangeObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  AppTextFormField get widget => super.widget as AppTextFormField;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
    textEditingController = widget.textEditingController ??
        TextEditingController(text: widget.initialValue);
  }
}
