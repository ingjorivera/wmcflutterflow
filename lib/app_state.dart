import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _Menu = prefs.getStringList('ff_Menu')?.map((x) => x == 'true').toList() ??
        _Menu;
    _Colores = prefs
            .getStringList('ff_Colores')
            ?.map((x) => Color(int.tryParse(x) ?? 0))
            .toList() ??
        _Colores;
  }

  late SharedPreferences prefs;

  Color UIMenu1 = Color(4294951680);

  List<bool> _Menu = [false, false];
  List<bool> get Menu => _Menu;
  set Menu(List<bool> _value) {
    _Menu = _value;
    prefs.setStringList('ff_Menu', _value.map((x) => x.toString()).toList());
  }

  void addToMenu(bool _value) {
    _Menu.add(_value);
    prefs.setStringList('ff_Menu', _Menu.map((x) => x.toString()).toList());
  }

  void removeFromMenu(bool _value) {
    _Menu.remove(_value);
    prefs.setStringList('ff_Menu', _Menu.map((x) => x.toString()).toList());
  }

  List<Color> _Colores = [Color(0), Color(0)];
  List<Color> get Colores => _Colores;
  set Colores(List<Color> _value) {
    _Colores = _value;
    prefs.setStringList(
        'ff_Colores', _value.map((x) => x.value.toString()).toList());
  }

  void addToColores(Color _value) {
    _Colores.add(_value);
    prefs.setStringList(
        'ff_Colores', _Colores.map((x) => x.value.toString()).toList());
  }

  void removeFromColores(Color _value) {
    _Colores.remove(_value);
    prefs.setStringList(
        'ff_Colores', _Colores.map((x) => x.value.toString()).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
