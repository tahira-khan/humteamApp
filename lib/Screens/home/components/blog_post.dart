import 'package:humteampro/constraints/const.dart';
import 'package:humteampro/models/Blog.dart';
import 'package:humteampro/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BlogPostCard extends StatelessWidget {
  final Blog blog;
  const BlogPostCard({
    Key key,
    @required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.78,
            child: Image.asset(
              blog.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: Color(0xFFD5DBDF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10.0, bottom: 10.0, top: 5.0),
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/hina.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Hina Yousuf'),
                        Text(
                          'Manager Recruitment',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Date".toUpperCase(),
                      style: TextStyle(
                        color: kDarkBlackColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      blog.date,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    blog.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ? 32 : 24,
                      fontFamily: "Raleway",
                      color: kDarkBlackColor,
                      height: 1.3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  blog.description,
                  maxLines: 4,
                  style: TextStyle(height: 1.5),
                ),
                SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Container(
                    //     padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                    //     decoration: BoxDecoration(
                    //       border: Border(
                    //         bottom: BorderSide(color: kPrimaryColor, width: 3),
                    //       ),
                    //     ),
                    //     child: Text(
                    //       "Read More",
                    //       style: TextStyle(color: kDarkBlackColor),
                    //     ),
                    //   ),
                    // ),
                    Spacer(),
                    // IconButton(
                    //   icon: SvgPicture.asset(
                    //       "icons/feather_thumbs-up.svg"),
                    //   onPressed: () {},
                    // ),
                    // IconButton(
                    //   icon: SvgPicture.asset(
                    //       "icons/feather_message-square.svg"),
                    //   onPressed: () {},
                    // ),
                    // IconButton(
                    //   icon:
                    //       SvgPicture.asset("icons/feather_share-2.svg"),
                    //   onPressed: () {},
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
