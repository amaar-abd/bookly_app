import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomeItem extends StatelessWidget {
  const CustomeItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .35, //Responsive
        child: AspectRatio(
          aspectRatio: 2.2 / 3,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
