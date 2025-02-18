import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Center(
        child: Text(
          'this is my gallery',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
