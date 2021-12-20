import 'dart:convert';

import '../base/controller/base_controller.dart';
import '../constants/enum/preferences_keys.dart';

class AuthanticationManager extends BaseController {
  static AuthanticationManager? _instance;
  static AuthanticationManager get instance {
    _instance ??= _instance = AuthanticationManager._init();
    return _instance!;
  }

  AuthanticationManager._init();
  bool isLogin = false;
  
  Future<void> initCacheUser(UserLocaleModel userLocaleModel) async {
    await localeManager.setStringValue(
        PreferencesKeys.USER_INFO, jsonEncode(userLocaleModel));
  }

  UserLocaleModel getLoggedUser() {
    String _userModelJson =
        localeManager.getStringValue(PreferencesKeys.USER_INFO);
    UserLocaleModel _userModel =
        UserLocaleModel.fromJson(jsonDecode(_userModelJson));

    return _userModel;
  }

  Future<bool> updateLoggedUser({
    String? fullname,
    String? username,
    String? description,
    String? email,
    String? userId,
    String? profilePhoto,
  }) async {
    isLogin = true;
    UserLocaleModel userLocaleModel = getLoggedUser();
    userLocaleModel.description = description ?? userLocaleModel.description;
    userLocaleModel.email = email ?? userLocaleModel.email;
    userLocaleModel.fullname = fullname ?? userLocaleModel.fullname;
    userLocaleModel.profilePicturePath =
        profilePhoto ?? userLocaleModel.profilePicturePath;
    userLocaleModel.username = username ?? userLocaleModel.username;
    userLocaleModel.userId = userId ?? userLocaleModel.userId;
    await localeManager.setStringValue(
        PreferencesKeys.USER_INFO, jsonEncode(userLocaleModel.toJson()));
    return true;
  }

  Future<void> deletedLoggedOutUser() async {
    await localeManager.removeKey(PreferencesKeys.USER_INFO);
    isLogin = false;
  }
}

class UserLocaleModel {
  String? userId;
  String? fullname;
  String? profilePicturePath;
  String? username;
  String? description;
  String? email;

  UserLocaleModel(
      {this.userId,
      this.fullname,
      this.profilePicturePath,
      this.username,
      this.description,
      this.email});

  UserLocaleModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    fullname = json['fullname'];
    profilePicturePath = json['profilePicturePath'];
    username = json['username'];
    description = json['description'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['fullname'] = this.fullname;
    data['profilePicturePath'] = this.profilePicturePath;
    data['username'] = this.username;
    data['description'] = this.description;
    data['email'] = this.email;
    return data;
  }
}
