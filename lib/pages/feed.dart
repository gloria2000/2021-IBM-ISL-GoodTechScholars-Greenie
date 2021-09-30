import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../ui/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  var greenieTheme = new GreenieTheme();
  final firestore = FirebaseFirestore.instance;

  final postController = TextEditingController();
    final titleController = TextEditingController();


  @override
  void initState() {}
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: greenieTheme.primaryColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          toolbarTextStyle: TextStyle(
            color: greenieTheme.secondaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: greenieTheme.secondaryColor),
          actionsIconTheme: IconThemeData(
            color: greenieTheme.secondaryColor,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: greenieTheme.primaryColor,
          centerTitle: true,
          title: Text(
            'FEEDS',
            style: TextStyle(fontFamily: greenieTheme.fontFamily),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: [_postWidget(), Expanded(child: _buildFeed())],
        ),
        bottomNavigationBar: NavBar(),
      ),
    );
  }

  Widget _buildFeed() {
    return StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('content').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.requireData;
            return ListView.builder(
                itemCount: data.docs.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> x =
                      data.docs[index].data() as Map<String, dynamic>;
                  return Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      
                      decoration: BoxDecoration(
                          color: greenieTheme.bgColor,
                          border: Border.all(width: 0.5, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            x['title'],
                            style: TextStyle(
                                color: greenieTheme.primaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontFamily: greenieTheme.fontFamily),
                          ),
                          Text(
                            x['para'],
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: greenieTheme.fontFamily),
                          ),
                          Image.asset('assets/images.jpg'),
                           Container(
            height: 50,
            decoration: BoxDecoration(
              color: greenieTheme.primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Row(children: [
              Expanded(
                child: InkWell(
                  child: Image.asset('assets/icons/heart.png'),
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Image.asset('assets/icons/share.png'),
                ),
              ),
            ]),
          ),
                        ],
                      ));
                });
          } else {
            return Text('error');
          }
        });
  }

  Widget _postWidget() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        TextField(
                          controller: titleController,
                          decoration: InputDecoration(hintText: 'Title'),
                        ),TextField(
                          controller: postController,
                          decoration: InputDecoration(hintText: 'Write a post..'),
                        ),
                      ],
                    )),
                flex: 3,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: ElevatedButton(
                    child: Text('POST'),
                    onPressed: () {
                      firestore
                          .collection('content')
                          .doc()
                          .set({'title': titleController.text, 'para': postController.text});
                      postController.clear();
                      titleController.clear();
                    },
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Media',
                    style: TextStyle(
                        color: greenieTheme.bgColor,
                        fontFamily: greenieTheme.fontFamily),
                  ),
                  decoration: BoxDecoration(
                    color: greenieTheme.primaryColor,
                  )),
              Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Tag post',
                    style: TextStyle(
                      color: greenieTheme.bgColor,
                      fontFamily: greenieTheme.fontFamily,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: greenieTheme.primaryColor,
                  )),
              Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Location',
                    style: TextStyle(
                        color: greenieTheme.bgColor,
                        fontFamily: greenieTheme.fontFamily),
                  ),
                  decoration: BoxDecoration(
                    color: greenieTheme.primaryColor,
                  )),
            ],
          )
        ],
      ),
    );
  }

/*
  Widget _buildFeedBlock(int index) {
    Map article = articles[index];
    final String sample = 'assets/icons/feeds';
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 500,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            color: greenieTheme.bgColor,
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.blue,
                  width: 80.0,
                  child: Image.asset('assets/images.jpg'),
                ),
                const SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        article["title"],
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: greenieTheme.secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(
                              child: CircleAvatar(
                                radius: 15.0,
                                backgroundColor: greenieTheme.primaryColor,
                              ),
                            ),
                            WidgetSpan(
                              child: const SizedBox(width: 5.0),
                            ),
                            TextSpan(
                                text: article["author"],
                                style: TextStyle(fontSize: 16.0)),
                            WidgetSpan(
                              child: const SizedBox(width: 20.0),
                            ),
                            WidgetSpan(
                              child: const SizedBox(width: 5.0),
                            ),
                            TextSpan(
                              text: article["time"],
                            ),
                          ],
                        ),
                        style: TextStyle(height: 2.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
*/
}
