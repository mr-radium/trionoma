import 'package:flutter/material.dart';
import 'package:trionoma/utilities/validator.dart';

Widget buildSignUpBtn(BuildContext context) {
  var _screenHeight = MediaQuery.of(context).size.height;
  var _screenWidth = MediaQuery.of(context).size.width;
  var _screenSize = MediaQuery.of(context).devicePixelRatio;

  return Container(
    padding: EdgeInsets.symmetric(vertical: _screenHeight * 0.04),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5.0,
      onPressed: () {
        signMeUp();
      },
      padding: EdgeInsets.all(45 / _screenSize),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_screenWidth * 0.083),
      ),
      color: Colors.white,
      child: Text(
        'SIGN UP',
        style: TextStyle(
          color: Color(0xFF5259FB),
          letterSpacing: _screenWidth * 0.00416,
          fontSize: _screenWidth * 0.05,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans',
        ),
      ),
    ),
  );
}
