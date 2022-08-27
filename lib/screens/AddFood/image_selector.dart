import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageSelector extends StatefulWidget {
  const ImageSelector({Key? key}) : super(key: key);

  @override
  State<ImageSelector> createState() => _ImageSelectorState();
}

class _ImageSelectorState extends State<ImageSelector> {
  /// Get from gallery
  String _imagePath = 'assets/WN 1.png';
  void _getFromGallery() async {
    final _pick = ImagePicker();
    XFile? _image = await _pick.pickImage(source: ImageSource.gallery);
    setState(() {
      _imagePath = _image!.path;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(_imagePath),
          ElevatedButton(
            child: const Text("Click Me"),
            onPressed: () {
            _getFromGallery();
            },
          ),
        ],
      ),
    );
  }
}
