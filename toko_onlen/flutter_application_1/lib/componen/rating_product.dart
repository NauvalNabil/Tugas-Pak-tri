import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({super.key});

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int _rating = 0;

  void _setRating(int index) {
    setState(() {
      _rating = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return IconButton(
          onPressed: () => _setRating(index + 1),
          icon: Icon(
            Icons.star,
            color: (index < _rating) ? Colors.yellow : Colors.grey,
          ),
        );
      }),
    );
  }
}
