import 'package:Flutter_native_Device_features/screens/add_place.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/great_place.dart';

class PlacesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Places'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
              })
        ],
      ),
      body: Consumer<GreatPlace>(
          child: Center(
            child: Text('No places adeed'),
          ),
          builder: (context, value, ch) => value.items.length <= 0
              ? ch
              : ListView.builder(
                  itemBuilder: (ctx, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: FileImage(value.items[i].image),
                    ),
                    title: Text(value.items[i].title),
                  ),
                  itemCount: value.items.length,
                )),
    );
  }
}
