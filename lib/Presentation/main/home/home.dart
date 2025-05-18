import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:traviki/Presentation/main/view/view_page.dart';
import 'package:traviki/Presentation/widgets/build_card.dart';
import 'package:traviki/Presentation/widgets/build_list.dart';
import 'package:traviki/Presentation/widgets/navbar.dart';
import 'package:traviki/core/theme/app_colors.dart';

import 'package:traviki/core/theme/app_theme.dart';
import 'package:traviki/data/top_places_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xffF6F6F6),
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.mainTheme,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Navbar(title: "Home"),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 44),
                    Text(
                      "Discover Global Wonders",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: AppColors.dark,
                      ),
                    ),
                    Text(
                      "Let's Explore Together ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.gray,
                      ),
                    ),
                    SizedBox(height: 36),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildTab("All", isActive: true),
                        buildTab("Popular"),
                        buildTab("Nearby"),
                        buildTab("Recomended"),
                      ],
                    ),
                    SizedBox(height: 24),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.fromLTRB(0, 0, 16, 16),
                      child: Row(
                        children: List.generate(
                          topPlaces.length,
                          (index) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          ViewPage(places: topPlaces[index]),
                                ),
                              );
                            },
                            child: buildCard(topPlaces[index]),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Text(
                          "Top Place",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.dark,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          child: Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.gray,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                      child: Column(
                        children: List.generate(
                          topPlaces.length,
                          (index) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          ViewPage(places: topPlaces[index]),
                                ),
                              );
                            },
                            child: buildList(topPlaces[index]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildTab(String title, {bool isActive = false}) {
  return GestureDetector(
    onTap: () {},
    child: Text(
      title,

      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: isActive ? AppColors.dark : AppColors.gray,
      ),
    ),
  );
}
