import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'constants.dart';
import 'colors.dart';

Widget text(
  String text, {
  var fontWeight = FontWeight.normal,
  var fontSize = textSizeLargeMedium,
  Color textColor,
  var fontFamily,
  var isCentered = false,
  var maxLine = 1,
  var latterSpacing = 0.5,
  bool textAllCaps = false,
  var isLongText = false,
  bool lineThrough = false,
}) {
  return Text(
    textAllCaps ? text.toUpperCase() : text,
    textAlign: isCentered ? TextAlign.center : TextAlign.start,
    maxLines: isLongText ? null : maxLine,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontFamily: fontFamily ?? null,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: textColor ?? normal_txt_color,
      height: 1.5,
      letterSpacing: latterSpacing,
      decoration:
          lineThrough ? TextDecoration.underline : TextDecoration.none,
    ),
  );
}

BoxDecoration boxDecoration(
    {double radius = 2,
    Color borderColor = Colors.transparent,
    Color shColor = Colors.transparent,
    Color fillColor,
    var showShadow = false}) {
  return BoxDecoration(
    color: fillColor ?? c_white,
    boxShadow: showShadow
        ? defaultBoxShadow(
            shadowColor:shColor.withOpacity(0.4),
            offset: const Offset(2.0, 2.0))
        : [BoxShadow(color: Colors.transparent)],
    border: Border.all(color: borderColor),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}

Widget textInputContainer({
  TextInputType inputType = TextInputType.text,
  TextEditingController textEditingController,
  String label,
  bool obscure = false,
  IconData i,
  bool icon = false,
  Color iconColor =mainColor,
  bool shadow = true,
}) {
  return TextFormField(
      cursorColor: mainColor.withOpacity(0.4),
      keyboardType: inputType,
      autofocus: false,
      obscureText: obscure,
      controller: textEditingController,
      style: const TextStyle(
        color: light_black,
        fontFamily: fontRegular,
        fontSize: textSizeMedium,
      ),
      decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: c_white,
          labelStyle: TextStyle(
              color: mainColor,
              fontFamily: fontRegular,
              fontSize: textSizeNormal,
              fontWeight: FontWeight.w600),
              prefixIcon: icon == false? null
              : Icon(i,color: iconColor,size: 30,),
          contentPadding: const EdgeInsets.fromLTRB(15.0, 5.0, 0, 10.0),
          focusedBorder: UnderlineInputBorder(borderSide:const BorderSide(color: mainColor),),  
          enabledBorder: UnderlineInputBorder(borderSide: const BorderSide(color: mainColor))),
                  
    );
}

Widget buttonWid({
  double rad = 5,
  width = double.infinity,
  String label,
  Color bColor,
  Color textcolor = c_white,
  borderColor =mainColor,
  Function function,
  bool border = false,
}) {
  return SizedBox(
    width: width,
    height: 50,
    child: MaterialButton(
      color: bColor,
      padding: const EdgeInsets.all(8),
      shape: border == false
          ? RoundedRectangleBorder(borderRadius: new BorderRadius.circular(rad))
          : RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(rad),
              side: BorderSide(color: borderColor, width: 1.5)),
      onPressed: function,
      child: text(label,
          fontSize: textSizeMedium, textAllCaps: true, textColor: textcolor),
    ),
  );
}

