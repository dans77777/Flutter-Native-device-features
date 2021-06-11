import 'package:Flutter_native_Device_features/screens/add_place.dart';
import 'package:Flutter_native_Device_features/screens/place_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/great_place.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GreatPlace(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesList(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
        },
      ),
    );
  }
}
