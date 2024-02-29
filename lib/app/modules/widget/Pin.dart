import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Pin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 83,
      height: 61,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        border: Border.all(color: Color(0xff000000).withOpacity(0.2)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color(0xff01B763), width: 2),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color(0xffFAFAFA),
      ),
    );
    return Pinput(
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        submittedPinTheme: submittedPinTheme,
        validator: (s) {
          return s == '2222' ? null : 'Pin is incorrect';
        },
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        showCursor: true,
        onCompleted: (pin) => print(pin),
        obscureText: true,
        obscuringWidget: Icon(Icons.monetization_on_sharp));
  }
}
