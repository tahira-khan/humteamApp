import 'package:humteampro/constraints/const.dart';
import 'package:humteampro/models/Blog.dart';
import 'package:humteampro/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class BlogPostCard extends StatefulWidget {
  final Blog blog;
  const BlogPostCard({Key key, this.blog}) : super(key: key);

  @override
  _BlogPostCardState createState() => _BlogPostCardState(blog);
}

class _BlogPostCardState extends State<BlogPostCard> {
  final Blog blog;
  _BlogPostCardState(this.blog);
  static SharedPreferences _sharedPreferences;

  String ptitle, pdetails, pimg, pdate, ptime;

  getpost() async {
    var res = await http
        .get(Uri.parse('https://guessitquiz.000webhostapp.com/tblpost.php'));
    var result = res.body;
    var data = json.decode(res.body);
    print(result);
    if (result != null) {
      setState(() {
        ptitle = data[0]['ptitle'];
        pdetails = data[0]['pdetails'];
        pimg = data[0]['pimg'];
        pdate = data[0]['pdate'];
        ptime = data[0]['ptime'];
      });

      // _sharedPreferences = await SharedPreferences.getInstance();
      // _sharedPreferences.setString('fullname', uname);
      // _sharedPreferences.setString('uemail', email);
      // _sharedPreferences.setString('uimg', uimg);
      // _sharedPreferences.setString('uname', username);

    } else if (result == "0") {
      print(result);
    }
  }

  @override
  void initState() {
    super.initState();

    getpost();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.78,
                  child: (pimg == null)
                      ? CircularProgressIndicator(
                          value: 2,
                        )
                      : Image.network(
                          '$pimg',
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
                                backgroundImage: NetworkImage('$pimg'),
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
                            '$pdate',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Text(
                          '$ptitle',
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
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}

// class BlogPostCard extends StatelessWidget {
//   final Blog blog;
//   const BlogPostCard({
//     Key key,
//     @required this.blog,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: kDefaultPadding),
//       child: Column(
//         children: [
//           AspectRatio(
//             aspectRatio: 1.78,
//             child: Image.asset(
//               blog.image,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(kDefaultPadding),
//             decoration: BoxDecoration(
//               color: Color(0xFFD5DBDF),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10),
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           right: 10.0, bottom: 10.0, top: 5.0),
//                       child: Container(
//                         height: 40.0,
//                         width: 40.0,
//                         child: CircleAvatar(
//                           backgroundImage: AssetImage('images/hina.jpg'),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10.0,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text('Hina Yousuf'),
//                         Text(
//                           'Manager Recruitment',
//                           style: Theme.of(context).textTheme.caption,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       "Date".toUpperCase(),
//                       style: TextStyle(
//                         color: kDarkBlackColor,
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(width: kDefaultPadding),
//                     Text(
//                       blog.date,
//                       style: Theme.of(context).textTheme.caption,
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: kDefaultPadding),
//                   child: Text(
//                     blog.title,
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                       fontSize: Responsive.isDesktop(context) ? 32 : 24,
//                       fontFamily: "Raleway",
//                       color: kDarkBlackColor,
//                       height: 1.3,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//                 Text(
//                   blog.description,
//                   maxLines: 4,
//                   style: TextStyle(height: 1.5),
//                 ),
//                 SizedBox(height: kDefaultPadding),
//                 Row(
//                   children: [
//                     // TextButton(
//                     //   onPressed: () {},
//                     //   child: Container(
//                     //     padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
//                     //     decoration: BoxDecoration(
//                     //       border: Border(
//                     //         bottom: BorderSide(color: kPrimaryColor, width: 3),
//                     //       ),
//                     //     ),
//                     //     child: Text(
//                     //       "Read More",
//                     //       style: TextStyle(color: kDarkBlackColor),
//                     //     ),
//                     //   ),
//                     // ),
//                     Spacer(),
//                     // IconButton(
//                     //   icon: SvgPicture.asset(
//                     //       "icons/feather_thumbs-up.svg"),
//                     //   onPressed: () {},
//                     // ),
//                     // IconButton(
//                     //   icon: SvgPicture.asset(
//                     //       "icons/feather_message-square.svg"),
//                     //   onPressed: () {},
//                     // ),
//                     // IconButton(
//                     //   icon:
//                     //       SvgPicture.asset("icons/feather_share-2.svg"),
//                     //   onPressed: () {},
//                     // ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
