import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool isFavorite = false;

  void changeFavorite() {
    const snackBar = SnackBar(
      content: Text('Favorite Clicked'),
    );

    setState(() {
      isFavorite = !isFavorite;
    });

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: changeFavorite,
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        size: 40,
        color: Colors.red,
      ),
    );
  }
}
