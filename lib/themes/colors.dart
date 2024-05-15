import 'package:flutter/material.dart';

const Color darkOrange = Color(0xffff4747);
const Color lightOrange = Color(0xfffc9842);
const Color lightRed = Color(0xffFE5F5F);
const Color pink = Color(0xffFFEFE1);
final Shader textGradient = const LinearGradient(
  colors: <Color>[Color(0xffFC9842), Color(0xffFE5F5F)],
).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));