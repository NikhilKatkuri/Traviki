import 'package:flutter/material.dart';
import 'package:traviki/core/theme/app_colors.dart';
import 'package:traviki/models/place.dart';

Widget buildCard(Place place) {
  return Container(
    width: 260, // Width of each card
    height: 228, // Height of each card
    margin: EdgeInsets.symmetric(horizontal: 8.0),
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Container(
          height: 140,
          width: 252,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
              image: AssetImage(place.imagePath),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              place.name,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            Spacer(),
            Icon(Icons.star_rounded, color: AppColors.primary, size: 18),
            Text(
              place.rating.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.gray,
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.location_pin, color: AppColors.primary, size: 18),
            Text(
              place.state,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.gray,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
