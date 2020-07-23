import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final Function onChanged;
  final bool isPassword;
  final TextInputType keyBoardType;

  const InputField({
    Key key,
    this.hintText,
    this.onChanged,
    this.isPassword = false, this.keyBoardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyBoardType,
      textAlign: TextAlign.center,
      obscureText: isPassword,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.blueGrey),
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
