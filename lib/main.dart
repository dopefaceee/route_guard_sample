import 'package:flutter/material.dart';
import 'package:route_guard/src/app.dart';
import 'package:route_guard/src/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  UserData data = UserData(name: "admin1", roleId: 1);
  saveData(data.roleId);
  runApp(App());
}

saveData(int roleId) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt('roleId', roleId);
  print('roleId saved.');
}
