import 'package:flutter/material.dart';

class SearchBoxColor {

  Color _fill = Colors.grey.shade300;
  Color _icon = Colors.grey.shade700;
  Color _text = Colors.grey.shade800;

  get fill => _fill;
  get icon => _icon;
  get text => _text;

  set fill(Color fill) => _fill = fill;
  set icon(Color icon) => _icon = icon;
  set text(Color text) => _text = text;

  Color _background = Colors.grey.shade100;
  get background => this._background;
  set background(Color background) => this._background = background;

  SearchBoxColor({Color fill, Color icon, Color text, Color background}){
    this._fill = fill == null ? this._fill : fill;
    this._icon = icon == null ? this._icon : icon;
    this._text = text == null ? this._text : text;
    this._background = background == null ? this._background : background;
  }
}