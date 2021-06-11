import 'dart:io';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 100,
          width: 150,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
          child: _storedImage == null
              ? Text(
                  'No Image Taken yet ',
                  textAlign: TextAlign.center,
                )
              : Image.file(
                  _storedImage,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  alignment: Alignment.center,
                ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.camera),
                textColor: Theme.of(context).primaryColor,
                label: Text('Take Picture')))
      ],
    );
  }
}
