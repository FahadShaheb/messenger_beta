import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:messenger_v1/models/welcome_model.dart';

import 'package:http/http.dart' as http;

class WelcomeRoomsState with ChangeNotifier {
  List<WelcomeModel> _welcomes = [];
  Future<bool> getWelcomeRooms() async {
    var url = Uri.parse("https://itna.xyz/chat/api/all-welcome-room/");

    try {
      http.Response response = await http.get(url);
      var data = json.decode(response.body) as List;

      List<WelcomeModel> temp = [];

      data.forEach((element) {
        WelcomeModel welcomemodel = WelcomeModel.fromJson(element);
        temp.add(welcomemodel);
      });

      _welcomes = temp;
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  List<WelcomeModel> get welcomerooms {
    return [..._welcomes];
  }

  WelcomeModel getPrivateChatRoom(int id) {
    return _welcomes.firstWhere((element) => element.id == id);
  }
}
