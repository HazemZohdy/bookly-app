import 'package:flutter/material.dart';

OutlineInputBorder customOutLineInPutBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
    );
  }