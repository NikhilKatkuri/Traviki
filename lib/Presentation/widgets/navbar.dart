import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traviki/core/images/app_images.dart';
import 'package:traviki/core/theme/app_colors.dart';
import 'package:traviki/core/vectors/app_vectors.dart';

class Navbar extends StatefulWidget {
  final String title;
  const Navbar({super.key, required this.title});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppVectors.menu),
        Spacer(),
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.gray,
          ),
        ),
        Spacer(),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Colors.white),
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 6,
                offset: Offset(0, 1),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(AppImages.profile),
              fit: BoxFit.cover,
            ),
          ),
        ),
     
      ],
    );
  }
}
