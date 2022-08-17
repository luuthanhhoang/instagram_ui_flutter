import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/constant/post_json.dart';
import 'package:instagram_ui_clone/constant/story_json.dart';
import 'package:instagram_ui_clone/theme/colors.dart';
import 'package:instagram_ui_clone/widgets/post_item.dart';
import 'package:instagram_ui_clone/widgets/story_item.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15, left: 15, bottom: 5, top: 5),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 65,
                          height: 65,
                          child: Stack(
                            children: [
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(profile),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    width: 19,
                                    height: 19,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: white),
                                    child: const Icon(
                                      Icons.add_circle,
                                      color: buttonFollowColor,
                                      size: 19,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        const SizedBox(
                          width: 70,
                          child: Text(
                            "Your story",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: white, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: List.generate(
                        stories.length,
                        (index) => StoryItem(
                              img: stories[index]['img'],
                              name: stories[index]['name'],
                            )),
                  ),
                ],
              )),
          Divider(
            color: white.withOpacity(0.2),
          ),
          Column(
            children: List.generate(
                posts.length,
                (index) => PostItem(
                      postImg: posts[index]['postImg'],
                      profileImg: posts[index]['profileImg'],
                      name: posts[index]['name'],
                      caption: posts[index]['caption'],
                      isLoved: posts[index]['isLoved'],
                      commentCount: posts[index]['commentCount'],
                      likedBy: posts[index]['likedBy'],
                      timeAgo: posts[index]['timeAgo'],
                    )),
          )
        ],
      ),
    );
  }
}
