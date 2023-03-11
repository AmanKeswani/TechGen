import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:techgen/constants/sharedPreferences.dart';
import 'package:techgen/utils/converters.dart';

getSharedPreferenceUser() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final userJSONString =
      sharedPreferences.getString(userSharedPreferenceString);
  final userJson = jsonDecode(userJSONString!);
  return toObject(userJson);
}
