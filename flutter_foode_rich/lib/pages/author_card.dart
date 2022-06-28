import 'package:flutter/material.dart';
import 'package:flutter_fooder_rich/component/foodelich_theme.dart';
import 'package:flutter_fooder_rich/pages/circle_img.dart';

class AuthorCard extends StatefulWidget {
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
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavourited = false;
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
                imageProvider: widget.imageProvider,
                imageRadius: 28,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FooderLichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: FooderLichTheme.lightTextTheme.headline3,
                  )
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _isFavourited = !_isFavourited;
              });
              // const snackBar = SnackBar(content: Text('Fav Pressed'));
              // ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(_isFavourited ? Icons.favorite : Icons.favorite_border),
            iconSize: 30,
            color: Colors.red[400],
          )
        ],
      ),
    );
  }
}
