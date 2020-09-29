import 'package:flutter/material.dart';
import 'package:elearn/components/text_field_container.dart';
import 'package:elearn/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool isPasswordShow = false;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: !isPasswordShow,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: isPasswordShow
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
            color: kPrimaryColor,
            onPressed: () {
              setState(() {
                if (isPasswordShow) {
                  isPasswordShow = false;
                } else {
                  isPasswordShow = true;
                }
              });
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
