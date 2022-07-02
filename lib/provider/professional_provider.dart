import 'package:mistri/models/professional.dart';
import 'package:flutter/material.dart';

class ProfessionalProvider extends ChangeNotifier {
  Professionals _user = Professionals(
    id: '',
    fullName: '',
    email: '',
    password: '',
    address: '',
    phone: '',
    profession1: '',
    time1: '',
    charge1: '',
    description: '',
    token: '',
  );

  Professionals get user => _user;

  void setUser(String user) {
    _user = Professionals.fromJson(user);
    notifyListeners();
  }

  void setUserFromModel(Professionals user) {
    _user = user;
    notifyListeners();
  }
}