import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_ui_clone/constant/story_json.dart';
import 'package:instagram_ui_clone/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class PostItem extends StatelessWidget {
  final String name;
  final String profileImg;
  final String postImg;
  final String caption;
  final bool isLoved;
  final String commentCount;
  final String likedBy;
  final String timeAgo;

  const PostItem({
    super.key,
    required this.name,
    required this.profileImg,
    required this.postImg,
    required this.caption,
    required this.isLoved,
    required this.commentCount,
    required this.likedBy,
    required this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(profileImg),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        color: white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const Icon(
                LineIcons.horizontalEllipsis,
                color: white,
              )
            ],
          ),
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(postImg), fit: BoxFit.cover)),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  isLoved
                      ? SvgPicture.asset(
                          "assets/images/loved_icon.svg",
                          width: 25,
                        )
                      : SvgPicture.asset(
                          "assets/images/love_icon.svg",
                          width: 25,
                        ),
                  const SizedBox(
                    width: 15,
                  ),
                  SvgPicture.asset(
                    "assets/images/comment_icon.svg",
                    width: 25,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SvgPicture.asset(
                    "assets/images/message_icon.svg",
                    width: 25,
                  ),
                ],
              ),
              SvgPicture.asset(
                "assets/images/save_icon.svg",
                width: 25,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: RichText(
              text: TextSpan(children: [
            const TextSpan(
                text: "Liked by ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
            TextSpan(
                text: likedBy,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const TextSpan(
                text: "and ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
            const TextSpan(
                text: "Other",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
          ])),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: name,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
            TextSpan(text: caption)
          ])),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "View $commentCount comments",
            style: TextStyle(color: white.withOpacity(0.5)),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(profile), fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Add comment ...',
                    style: TextStyle(color: white.withOpacity(0.5)),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '😂',
                    style: TextStyle(color: white, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "😍",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.add_circle,
                    color: white.withOpacity(0.5),
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            timeAgo,
            style: TextStyle(
                color: white.withOpacity(0.5),
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
