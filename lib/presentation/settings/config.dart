import 'package:flutter/material.dart';

class Config {
  final BuildContext _context;

  Config._(this._context);
  factory Config.of(BuildContext context) => Config._(context);

  MediaQueryData get _mediaQueryData => MediaQuery.of(_context);

  double get width => _mediaQueryData.size.width;
  double get height => _mediaQueryData.size.height;
  Orientation get orientation => _mediaQueryData.orientation;
  Brightness get brightness => _mediaQueryData.platformBrightness;
  Size get size => _mediaQueryData.size;
}
