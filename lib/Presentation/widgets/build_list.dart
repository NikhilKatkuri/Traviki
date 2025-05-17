import 'package:flutter/material.dart';
import 'package:traviki/core/theme/app_colors.dart';
import 'package:traviki/models/place.dart';

Widget buildList(Place place) {
  return Container(
    height: 116,
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 8),
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        Container(
          width: 85,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(place.imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                place.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Row(
                children: [
                  Icon(Icons.star_rounded, color: AppColors.primary, size: 18),
                  SizedBox(width: 4),
                  Text(
                    place.rating.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.gray,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_pin, color: AppColors.primary, size: 18),
                  SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      '${place.city} ${place.state}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.gray,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
