import 'package:flutter/material.dart';
import 'package:trionoma/utilities/constants.dart';

Widget buildPasswordTF(
    BuildContext context, TextEditingController textEditingController) {
  var _screenHeight = MediaQuery.of(context).size.height;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style: kLabelStyle,
      ),
      SizedBox(height: _screenHeight * 0.016),
      Container(
        alignment: Alignment.centerLeft,
        decoration: kBoxDecorationStyle,
        height: 60.0, //_screenHeight * 0.09
        child: TextField(
          controller: textEditingController,
          obscureText: true,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14.0), //_screenHeight * 0.023
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            hintText: 'Enter your Password',
            hintStyle: kHintTextStyle,
          ),
        ),
      ),
    ],
  );
}
