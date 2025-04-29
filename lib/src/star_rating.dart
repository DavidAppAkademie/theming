import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  // Attribute
  final int rating;
  final Color starColor;

  // Konstruktor
  const StarRating({super.key, required this.rating, required this.starColor});

  // Methoden
  @override
  Widget build(BuildContext context) {
    int correctedRating = rating;

    if (rating > 5) {
      correctedRating = 5;
    } else if (rating < 0) {
      correctedRating = 0;
    }

    int numberOfFullStars = correctedRating;
    int numberOfEmptyStars = 5 - correctedRating;

    List<Icon> fullStars =
        List.filled(numberOfFullStars, Icon(Icons.star, color: starColor));

    List<Icon> emptyStars = List.filled(
        numberOfEmptyStars, Icon(Icons.star_border, color: starColor));

    return Row(
      children: [...fullStars, ...emptyStars],
    );
  }
}
