import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/constant/search_json.dart';
import 'package:instagram_ui_clone/theme/colors.dart';
import 'package:instagram_ui_clone/widgets/search_category_item.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  getBody() {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: size.width - 30,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: textFieldBackground),
                        child: TextField(
                          cursorColor: white.withOpacity(0.3),
                          style: TextStyle(color: white.withOpacity(0.7)),
                          decoration: InputDecoration(
                              hintText: "Search...",
                              hintStyle:
                                  TextStyle(color: white.withOpacity(0.3)),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search,
                                  color: white.withOpacity(0.3))),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            searchCategories.length,
                            (index) => SearchCategory(
                                category: searchCategories[index])),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Wrap(
              spacing: 1,
              runSpacing: 1,
              children: List.generate(
                  searchImages.length,
                  (index) => Container(
                        width: (size.width - 4) / 3,
                        height: (size.width - 4) / 3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(searchImages[index]),
                                fit: BoxFit.cover)),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
