import 'package:dog_api/ui/views/widget/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlainTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final double horizontalPadding;
  final double verticalPadding;
  final double horizontalMargin;
  final double verticalMargin;
  final double horizontalContentPadding;
  final bool showPrefixIcon;
  final bool boarder;
  final bool capitalizeWords;
  final Color? boarderColor;
  final Function(String)? onTextChange;
  final Color bgColor;
  final int maxLines;
  final int maxInput;

  const PlainTextField({Key? key, this.controller, this.hint = "First Name", this.horizontalPadding = 15,
    this.verticalPadding = 0, this.horizontalMargin = 15, this.verticalMargin = 0,
    this.showPrefixIcon = false, this.boarder = false, this.capitalizeWords = true,
    this.onTextChange, this.boarderColor, this.horizontalContentPadding = 0, this.bgColor = widgetBgColor, this.maxLines = 1, this.maxInput = 100}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin, vertical: verticalMargin),
      width: 400,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: bgColor,
          border: boarderColor != null && boarder ? const Border.fromBorderSide(BorderSide(color: primaryColor, width: 0.5)) : null,
          borderRadius: boarder ? BorderRadius.circular(5.0): null
      ),
      child: TextFormField(
        maxLines: maxLines,
        inputFormatters: [LengthLimitingTextInputFormatter(maxInput)],
        keyboardType: TextInputType.text,
        textCapitalization: capitalizeWords ? TextCapitalization.words : TextCapitalization.sentences,
        autofocus: false,
        decoration: InputDecoration(
            hintText: hint,
            labelText: hint,
            icon: showPrefixIcon ? const Icon(
              Icons.text_fields,
              color: secondaryColor,
            ) : null,
          contentPadding: EdgeInsets.symmetric(horizontal: horizontalContentPadding, vertical: 4),
          border: boarder ? InputBorder.none : const UnderlineInputBorder(
            borderSide: BorderSide(),
          ),
          focusedBorder: boarder ? InputBorder.none : const UnderlineInputBorder(
              borderSide: BorderSide(color: primaryColor)
          ),
        ),
        controller: controller,
        onChanged: onTextChange,
      ),
    );
  }
}