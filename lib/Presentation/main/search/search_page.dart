import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:traviki/Presentation/main/view/view_page.dart';
import 'package:traviki/Presentation/widgets/build_card.dart';
import 'package:traviki/core/theme/app_colors.dart';
import 'package:traviki/core/theme/app_theme.dart';
import 'package:traviki/core/vectors/app_vectors.dart';
import 'package:traviki/data/category_data.dart';
import 'package:traviki/data/top_places_data.dart';
import 'package:traviki/models/category.dart'; 
import '../../widgets/navbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
              child: Navbar(title: "Search"),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 44),
                    TextField(
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      decoration: InputDecoration(
                        labelText: 'Search',
                        labelStyle: TextStyle(fontWeight: FontWeight.w500),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xFFDFDFDF),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                            color: Color(0xFFDFDFDF),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            AppVectors.search,
                            height: 24,
                            width: 24,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 40,
                          minHeight: 40,
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.dark,
                          ),
                        ),
                        SizedBox(height: 12),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,

                          child: Row(
                            children: List.generate(
                              categoryData.length,
                              (index) => _buildTab(categoryData[index]),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Recommend",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.dark,
                          ),
                        ),
                        SizedBox(height: 16),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(topPlaces.length, (index)=>
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ViewPage(places: topPlaces[index])));
                              },
                              child: buildCard(topPlaces[index]),
                            )
                            ),
                          ),
                        )
                      ],
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

Widget _buildTab(Category category) {
  return Container(
    width: 70,
    height: 100,
    margin: EdgeInsets.only(right: 16),
    child: GestureDetector(
      child: Column(
        children: [
          Container(
            height: 64,
            width: 64,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(56),
              color: Colors.white,
            ),
          ),
          SizedBox(height: 6),
          Text(
            category.name,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.dark,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
