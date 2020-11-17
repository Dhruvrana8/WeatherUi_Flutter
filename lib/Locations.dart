import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Locations{
  final String text;
  final String timing;
  final int temperature;
  final String  weather;
  final String  imageUrl;

  Locations({
    this.text,
    this.imageUrl,
    this.temperature,
    this.timing,
    this.weather
});
}