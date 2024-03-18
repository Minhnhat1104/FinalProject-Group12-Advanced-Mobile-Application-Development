import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_hub/constants/style.dart';

class Toolbar extends StatelessWidget {
  final Function onFavorite;

  const Toolbar({super.key, required this.onFavorite});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 12),
            child: TextFormField(
              // The validator receives the text that the user has entered.
              decoration: inputOutlined('Search for projects'),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(Radius.circular(999))),
          child: IconButton(
            onPressed: () => {onFavorite()},
            // color: Colors.pink,
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
        )
      ],
    );
  }
}
