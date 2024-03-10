import 'package:flutter/material.dart';

Widget customField(BuildContext context, IconData iconData) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.07,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(60),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 5.0,
          spreadRadius: 1.0,
          offset: Offset(2.0, 4.0),
        ),
      ],
    ),
    child: Center(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconData,
            color: const Color.fromARGB(255, 12, 96, 221),
          ),
          border: InputBorder.none,
        ),
      ),
    ),
  );
}