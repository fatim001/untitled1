import 'package:flutter/material.dart';
import 'package:untitled1/otp.dart';
import 'package:untitled1/phone.dart' show MyPhone;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "phone",
    routes: {
      "phone":(context)=>MyPhone(), "OTP":(context)=>MyOtp()},

  ));
}

