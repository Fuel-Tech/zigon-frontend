import 'package:flutter/material.dart';

class FilterGenerator {
  String filter1 = "0.2126:0.7152:0.0722:0:0.2126:0.7152:0.0722:0:0.2126:0.7152:0.0722:0:0:0:0:1";
  String filter2 = "0.393:0.769:0.189:0:0.349:0.686:0.168:0:0.272:0.534:0.131:0:0:0:0:1";
  String filter3 = "-1.000:0.000:0.000:0.000:0.000:-1.000:0.000:0.000:0.000:0.000:-1.000:0.000:0.000:0.000:0.000:1.000";
  String filter4 = "2:0:0:-255:0:2:0:-255:0:0:2:-255:0:0:0:1";
  String filter5 = "1.030:-0.545:0.000:0.000:0.000:1.000:-0.404:0.068:0.000:0.000:1.000:0.000:0.000:0.000:0.000:0.985";
  String filter6 = "1.030:-0.047:0.000:0.000:0.000:1.000:-0.534:0.008:0.000:0.000:1.000:0.000:0.000:0.000:-0.564:1.100";


  List<ColorFilter> generateColorFilters() {
    List<ColorFilter> colorFilters = [];
 
    // Add a default color filter with no effect
    colorFilters.add(const ColorFilter.mode(Colors.transparent, BlendMode.color));
    // colorchannelmixer=r0c0:r0c1:r0c2:r0c3:r0c4:r1c0:r1c1:r1c2:r1c3:r1c4:r2c0:r2c1:r2c2:r2c3:r2c4:r3c0:r3c1:r3c2:r3c3:r3c4 - 4x5



  
    // Add a grayscale filter
    colorFilters.add(const ColorFilter.matrix([
      0.2126, 0.7152, 0.0722, 0, 0,
      0.2126, 0.7152, 0.0722, 0, 0,
      0.2126, 0.7152, 0.0722, 0, 0,
      0, 0, 0, 1,0,
    ]));


    // Add a sepia filter
    colorFilters.add(const ColorFilter.matrix([
      0.393, 0.769, 0.189, 0, 0,
      0.349, 0.686, 0.168, 0, 0,
      0.272, 0.534, 0.131, 0, 0,
      0, 0, 0, 1, 0,
    ]));


    // Add a negative filter
    colorFilters.add(const ColorFilter.matrix([
      -1, 0, 0, 0, 255,
      0, -1, 0, 0, 255,
      0, 0, -1, 0, 255,
      0, 0, 0, 1, 0,
    ]));



    // Add a high contrast filter
    colorFilters.add(const ColorFilter.matrix([
      2, 0, 0, 0, -255,
      0, 2, 0, 0, -255,
      0, 0, 2, 0, -255,
      0, 0, 0, 1, 0,
    ]));



    colorFilters.add(const ColorFilter.matrix([
      1.030, -0.545,  0.000,  0.000,  0.000, 
      0.000,  1.000, -0.404,  0.068,  0.000, 
      0.000,  0.000,  1.000,  0.000,  0.000, 
      0.000,  0.000,  0.000,  0.985,  0.000,
    ]));  


    colorFilters.add(const ColorFilter.matrix([
      1.030, -0.047,  0.000,  0.000,  0.000, 
      0.000,  1.000, -0.534,  0.008,  0.000, 
      0.000,  0.000,  1.000,  0.000,  0.000, 
      0.000,  0.000, -0.564,  1.100,  0.000,
    ]));


  return colorFilters;
}

}