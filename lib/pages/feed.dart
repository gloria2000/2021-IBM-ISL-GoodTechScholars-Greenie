import 'package:flutter/material.dart';
import '../ui/utils.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

final List<Map> articles = [
  {
    "title":
        "KUKA OIL AND GAS In celebration of the Montreal Protocol that played an important role in decreasing the adverse effects",
    "author": "Post",
    "time": "4 min read",
  },
  {
    "title":
        "Google LLC The phaseout of controlled uses of ozone depleting substances and the related reductions have not only helped protect the ",
    "author": "Post",
    "time": "3 min read",
  },
  {
    "title":
        "KUKA OIL AND GAS In celebration of the Montreal Protocol that played an important role in decreasing the adverse effects",
    "author": "Post",
    "time": "4 min read",
  },
  {
    "title":
        "Google LLC The phaseout of controlled uses of ozone depleting substances and the related reductions have not only helped protect the ",
    "author": "Post",
    "time": "3 min read",
  },
  {
    "title":
        "KUKA OIL AND GAS In celebration of the Montreal Protocol that played an important role in decreasing the adverse effects",
    "author": "Post",
    "time": "4 min read",
  },
  {
    "title":
        "Google LLC The phaseout of controlled uses of ozone depleting substances and the related reductions have not only helped protect the ",
    "author": "Post",
    "time": "3 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
];

class _FeedState extends State<Feed> {
  var greenieTheme = new GreenieTheme();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Theme(
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
          body: SingleChildScrollView(
            child: Column(
              children: [_buildFeed(0), Divider(), _buildFeed(0)],
            ),
          ),
          bottomNavigationBar: NavBar(),
        ),
      ),
    );
  }

  Widget _buildFeed(int index) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5,color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Title',
            style: TextStyle(
                fontFamily: greenieTheme.fontFamily,
                fontSize: 20,
                color: greenieTheme.primaryColor),
          ),
          Text(
            'Lorem Ipsum fnejfbaiufid nfdjnfiuadnf dfuidhafid fdfuidahfuiadfn buifidhfiuawdhf ffuhf',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black,
              fontFamily: greenieTheme.fontFamily,
              fontWeight: FontWeight.w300,
              fontSize: 18.0,
            ),
          ),
          SizedBox(child: Image.asset('assets/images.jpg')),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: greenieTheme.primaryColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),),
            child: Row(children: [
              Expanded(
                child: Icon(Icons.thumb_up, color: greenieTheme.bgColor),
              ),
              Expanded(
                child: Icon(Icons.thumb_up, color: greenieTheme.bgColor),
              ),
            ]),
          ),
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
