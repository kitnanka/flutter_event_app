
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_event_app/resources/color_manager.dart';
import 'package:flutter_event_app/resources/values_manager.dart';
import 'package:gap/gap.dart';

class InawoTextField extends StatelessWidget {
  final String title;
  final bool isWithoutHeader;
  final bool obscureText;
  final TextInputType inputType;
  final int maxLength;
  final TextEditingController textEditingController;
  final isEnabled;
  final List<TextInputFormatter> inputFormatters;
  final Function(String) onChange;
  final TextInputAction textInputAction;
  final String Function(String) validator;
  final String hintText;
  final Widget prefixIcon;
  final Widget prefix;
  final String prefixText;
  final TextStyle hintStyle;
  

  const InawoTextField(
      {Key key,
      this.title,
      this.maxLength,
      this.inputFormatters,
      this.isWithoutHeader = false,
      this.inputType,
      this.onChange,
      this.textEditingController,
      this.textInputAction = TextInputAction.next,
      this.isEnabled = true,
      this.validator, Null Function() onTap, this.hintText, this.prefixIcon, this.obscureText, this.prefix, this.hintStyle, this.prefixText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField( 
      enabled: isEnabled,
      textAlignVertical: TextAlignVertical.center,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChange,
      validator: validator,
      //obscureText: obscureText,
    
      
      inputFormatters: inputFormatters,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(color: ColorManager.placeHolderText),
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: prefixIcon,
        prefix: prefix ,
        hintText: hintText,
        hintStyle: hintStyle,
        prefixText: prefixText,
       contentPadding: EdgeInsets.zero,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
            borderSide: BorderSide(
                color: ColorManager.textBoxColor, style: BorderStyle.solid)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
            borderSide: BorderSide(
                color: ColorManager.buttonBlue,
                style: BorderStyle.solid)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          borderSide: BorderSide(
            color: ColorManager.textBoxColor,
            style: BorderStyle.solid,
          ),
        ),
      ),
      maxLength: maxLength,
      textInputAction: textInputAction,
      controller: textEditingController,
      keyboardType: inputType,
    );
  }
}