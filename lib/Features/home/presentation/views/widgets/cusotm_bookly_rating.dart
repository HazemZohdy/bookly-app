import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBooklyRating extends StatelessWidget {
  const CustomBooklyRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;

  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 23,
        ),
        const SizedBox(width: 6.3),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          '($count)',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
