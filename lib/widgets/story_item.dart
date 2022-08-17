import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/theme/colors.dart';

class StoryItem extends StatelessWidget {
  final String img;
  final String name;
  const StoryItem({
    super.key,
    required this.img,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 5, top: 5),
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: storyBorderColor,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    border: Border.all(color: black, width: 2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(img), fit: BoxFit.cover)),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 70,
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: white),
            ),
          ),
        ],
      ),
    );
  }
}
