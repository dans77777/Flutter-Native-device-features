import 'package:Flutter_native_Device_features/models/place.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import '../helpers/db_helper.dart';

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
    DBHelper.insertData('places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path,
    });
  }

  Future<void> fetchPlace() async {
    final dataList = await DBHelper.getData('places');
    _items = dataList
        .map(
          (item) => Place(
              id: item['id'],
              title: item['title'],
              image: File(item['image']),
              location: null),
        )
        .toList();
    notifyListeners();
  }
}
