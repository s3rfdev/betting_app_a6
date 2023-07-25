import 'package:flutter/material.dart';

import '../../res/styles.dart';

class ImageMiniCard extends StatelessWidget {
  ImageMiniCard({
    super.key,
    required this.title,
    required this.img,
  });
  String title;
  String img;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: blue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          ),
          child: Image.asset(img),
        ),
        SizedBox(width: 20),
        SizedBox(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: s16, overflow: TextOverflow.ellipsis, maxLines: 2),
              Text('0:30', style: s13Red),
            ],
          ),
        ),
        SizedBox(width: 60),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 18,
        ),
      ],
    );
  }
}
