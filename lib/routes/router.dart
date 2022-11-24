import 'package:flutter/material.dart';
import 'package:medicare/screens/doctor_detail.dart';
import 'package:medicare/screens/home.dart';
import '../screens/Login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // '/login': (context) => LoginScreen(),
  '/': (context) => Home(),
  '/detail': (context) => SliverDoctorDetail(),
};
