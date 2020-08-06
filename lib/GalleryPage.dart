import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'BuildGrid.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  File _image;

  getImageFile(ImageSource source) async {
//
    var image = await ImagePicker.platform.pickImage(source: source);
    File cropppedFile = await ImageCropper.cropImage(
      sourcePath: image.path,
      aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0),
      maxHeight: 512,
      maxWidth: 512,
    );
    setState(() {
      _image = cropppedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Image & Video"),
      ),
      body: SafeArea(
        child: Column(children: <Widget>[
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 2.2,
              child: Center(
                child: _image == null
                    ? Text("Image")
                    : Image.file(
                        _image,
                        height: double.maxFinite,
                        width: 200,
                      ),
              ),
            ),
          ),
          Expanded(child: BuildGrid()),
        ]),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton.extended(
            label: Text("Photo"),
            heroTag: UniqueKey(),
            icon: Icon(Icons.camera),
            onPressed: () => getImageFile(ImageSource.camera),
          ),
          FloatingActionButton.extended(
            label: Text("Galery"),
            heroTag: UniqueKey(),
            icon: Icon(Icons.photo_library),
            onPressed: () => getImageFile(ImageSource.gallery),
          ),
        ],
      ),
    );
  }
}
