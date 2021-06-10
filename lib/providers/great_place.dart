import 'package:Flutter_native_Device_features/models/place.dart';
import 'package:flutter/cupertino.dart';

class GreatPlace with ChangeNotifier {
  List<Place> _items = [];
  List<Place> get items {
    return [..._items];
  }
}
