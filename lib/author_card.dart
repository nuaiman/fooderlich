import 'package:flutter/material.dart';
import 'package:fooderlich/cirlcle_image.dart';
import 'package:fooderlich/favorite_widget.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleImage(
            imageRadius: 28,
            imageProvider: imageProvider,
          ),
          const SizedBox(
            width: 7,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                authorName,
                style: FooderlichTheme.lightTextTheme.headline2,
              ),
              Text(
                title,
                style: FooderlichTheme.lightTextTheme.headline3,
              ),
            ],
          ),
          const Spacer(),
          // const Icon(
          //   Icons.favorite_border,
          //   size: 40,
          //   color: Colors.red,
          // ),
          const FavoriteWidget(),
        ],
      ),
    );
  }
}
