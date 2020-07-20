import 'package:flutter/material.dart';

class CommonCircleAvatar extends StatelessWidget {
  final String imageUrl;

  CommonCircleAvatar(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return imageUrl == ''
        ? CircleAvatar(
            maxRadius: 25,
            backgroundColor: Colors.grey.shade300,
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.black38,
            ),
          )
        : CircleAvatar(
            maxRadius: 25,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(imageUrl),
          );
  }
}
