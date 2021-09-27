import 'package:humteampro/constraints/const.dart';
import 'package:flutter/material.dart';

class NotificationL extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<NotificationL> {
  final List<String> titleList = [
    "Notification",
    "Notification",
    "Notification",
    "Notification",
    "Notification",
    "Notification",
    "Notification"
  ];

  final List<String> descList = [
    "Push notification !",
    "Push notification !",
    "Push notification !",
    "Push notification !",
    "Push notification !",
    "Push notification !",
    "Push notification !"
  ];

  final List<String> timeList = [
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021",
    "1:23 am Saturday, 11 September 2021"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFD5DBDF),
        appBar: AppBar(
          flexibleSpace: Container(decoration: kBoxDecorationgradient),
          title: KAppbarimage,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: ListView.builder(
                      itemCount: titleList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            showDialogFunc(context, titleList[index],
                                descList[index], timeList[index]);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 25.0, right: 25.0, top: 7.0),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 80,
                                      height: 80,

                                      child: CircleAvatar(
                                        backgroundColor: Color(0xFFD5DBDF),
                                        child: Icon(
                                          Icons.notifications_active,
                                          size: 30.0,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      // child: Image.asset(imgList[index]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            titleList[index],
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            child: Text(
                                              descList[index],
                                              maxLines: 3,
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey[500]),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            child: Text(
                                              timeList[index],
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(15.0)),
                                      // width: 100.0,
                                      // child: Center(
                                      //   child: Row(
                                      //     mainAxisAlignment: MainAxisAlignment.center,
                                      //     children: <Widget>[
                                      //       Text('Checked'),

                                      //       SizedBox(
                                      //         width: 5.0,
                                      //       ),

                                      //       Icon(
                                      //         Icons.check,
                                      //         color: Colors.white,
                                      //       )

                                      //     ],
                                      //   ),
                                      // ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ])),
          ],
        ));
  }

  showDialogFunc(context, title, desc, time) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15),
              height: 250,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Icon(Icons.notifications_active)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // width: 200,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        desc,
                        maxLines: 3,
                        style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15.0)),
                    width: 100.0,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Check In'),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
