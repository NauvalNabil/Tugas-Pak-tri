import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {},
        icon: Icon(Icons.star),
        ),
        IconButton(onPressed: () {},
        icon: Icon(Icons.star),
        ),
        IconButton(onPressed: () {},
        icon: Icon(Icons.star),
        ),
        IconButton(onPressed: () {},
        icon: Icon(Icons.star),
        ),
        IconButton(onPressed: () {},
        icon: Icon(Icons.star),
        ),
      ],
    
    );
  }
}