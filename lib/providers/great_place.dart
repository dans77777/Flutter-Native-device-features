import 'package:Flutter_native_Device_features/models/place.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class GreatPlace with ChangeNotifier {
  List<Place> _items = [];
  List<Place> get items {
    return [..._items];
  }

  void addPlaces(String title, File imageFile) {
    final newPlace = Place(
        id: DateTime.now().toString(),
        image: imageFile,
        title: title,
        location: null);
    _items.add(newPlace);
    notifyListeners();
  }
}
