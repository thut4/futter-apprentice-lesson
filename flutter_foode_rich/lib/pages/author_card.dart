import 'package:flutter/material.dart';
import 'package:flutter_fooder_rich/component/foodelich_theme.dart';
import 'package:flutter_fooder_rich/pages/circle_img.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard(
      {Key? key,
      required this.authorName,
      required this.title,
      this.imageProvider})
      : super(key: key);
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        //add alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderLichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderLichTheme.lightTextTheme.headline3,
                  )
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              const snackBar = SnackBar(content: Text('Fav Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: const Icon(Icons.favorite),
            iconSize: 30,
            color: Colors.grey[400],
          )
        ],
      ),
    );
  }
}
