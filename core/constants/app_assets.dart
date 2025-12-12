import 'package:flutter/material.dart';

class AppAssets {
  static const image = AppImages();
  static const icons = AppIcons();
}

class AppImages{
  const AppImages();
  final _path = "assets/images/";

  String get lake => "$_path/like.jpg";
}

class AppIcons {
  const AppIcons();
  final _path = "assets/images/"; // icons емес, images папкасы
  String get logo => "${_path}logo.svg";
}

class AppColors{
  static const Color red = Colors.red;
}

class AppConstants{
  static const gap1 = 20.0;
  static const gap2 = 15.0;
  static const gap3 = 10.0;

}