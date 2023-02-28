import 'package:flutter/material.dart';
import '../Models/images_model.dart';

class ImagesList extends StatelessWidget {
  final List<ImagesModel> images;
  const ImagesList({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: ((context, int index) {
        return buildImage(images[index]);
      }),
    );
  }

  Widget buildImage(ImagesModel image) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.network(image.url),
          ),
          Text(image.title),
        ],
      ),
    );
  }
}
