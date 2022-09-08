import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent(
      {Key? key, @required this.cardIcon, @required this.cardTitle})
      : super(key: key);

  final IconData? cardIcon;
  final String? cardTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          cardTitle!,
          style: kLabelTextColor,
        )
      ],
    );
  }
}
