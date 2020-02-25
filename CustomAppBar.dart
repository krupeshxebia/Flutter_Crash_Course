import 'package:flutter/material.dart';

class CustomAppBar {
  static getAppBar(String title) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      elevation: 5.0,
    );
  }
}
