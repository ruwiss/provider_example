import 'package:flutter/widgets.dart';

class SayacProvider with ChangeNotifier {
  int sayi = 0;

  void sayiArttir() {
    sayi++;
    notifyListeners();
  }
}
