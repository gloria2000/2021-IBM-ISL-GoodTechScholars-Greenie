import 'package:flutter/material.dart';
import '../ui/utils.dart';
class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}


final List<Map> articles = [
  {
    "title": "KUKA OIL AND GAS In celebration of the Montreal Protocol that played an important role in decreasing the adverse effects",
    "author": "Post",
    "time": "4 min read",
  },
  {
    "title": "Google LLC The phaseout of controlled uses of ozone depleting substances and the related reductions have not only helped protect the ",
    "author": "Post",
    "time": "3 min read",
  },
 {
    "title": "KUKA OIL AND GAS In celebration of the Montreal Protocol that played an important role in decreasing the adverse effects",
    "author": "Post",
    "time": "4 min read",
  },
  {
    "title": "Google LLC The phaseout of controlled uses of ozone depleting substances and the related reductions have not only helped protect the ",
    "author": "Post",
    "time": "3 min read",
  },
  {
    "title": "KUKA OIL AND GAS In celebration of the Montreal Protocol that played an important role in decreasing the adverse effects",
    "author": "Post",
    "time": "4 min read",
  },
  {
    "title": "Google LLC The phaseout of controlled uses of ozone depleting substances and the related reductions have not only helped protect the ",
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
          backgroundColor: Theme.of(context).buttonColor,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Feed'),
            leading: Icon(Icons.category),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              isScrollable: true,
              labelColor: greenieTheme.primaryColor,
              indicatorColor: greenieTheme.primaryColor,
              unselectedLabelColor: greenieTheme.secondaryColor,
              tabs: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("For You"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Design"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Beauty"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Education"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Entertainment"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return _buildArticleItem(index);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16.0),
              ),
              Container(
                child: Text("Tab 2"),
              ),
              Container(
                child: Text("Tab 3"),
              ),
              Container(
                child: Text("Tab 4"),
              ),
              Container(
                child: Text("Tab 5"),
              ),
            ],
          ),

          bottomNavigationBar: NavBar(),
        ),
      ),
    );
  }


  Widget _buildArticleItem(int index) {
    Map article = articles[index];
    final String sample = 'assets/';
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            color:greenieTheme.bgColor,
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
