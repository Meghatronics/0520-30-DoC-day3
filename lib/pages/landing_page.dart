import 'package:day3_30doc/util/objects.dart';
import 'package:day3_30doc/util/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:day3_30doc/util/components.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
 

  @override
  Widget build(BuildContext context) {
     List<Widget> newsCardList = [
    NewsScrollCard( newsList[0]),
    NewsScrollCard(newsList[1]),
    NewsScrollCard(newsList[0]),
    NewsScrollCard(newsList[1]),
  ];
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            kGradientColor1,
            kGradientColor2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'NEWS',
                  textAlign: TextAlign.center,
                  style: kHeadingTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.search, color: kTransparentIconColor),
                      Expanded(
                          flex: 15,
                          child: Text(
                            '  Search Stories',
                            style: kSearchBarTextStyle,
                          )),
                      Flexible(
                        child: IconButton(
                          
                          padding: EdgeInsets.all(0),
                          alignment: Alignment.centerRight,
                          icon: Icon(
                            Icons.mic,
                            color: kTransparentIconColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  constraints: BoxConstraints.tightFor(
                    height: 35,
                    width: double.infinity,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0x3affffff),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              Expanded(
                child: ListView(children: newsCardList),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          color: Colors.transparent,
          height: kNavigationBarHeight,
          child: Column(
            children: <Widget>[
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child:
                            NavigationButton(onNavigate: (){setState(() {
                              newsCardList.add(NewsScrollCard(newsList[1]));
                            });}, label: 'HOME', icon: Icons.sort)),
                    Expanded(
                      child: NavigationButton(
                        label: 'BOOKMARKS',
                        icon: Icons.collections_bookmark,
                      ),
                    ),
                    Expanded(
                      child: NavigationButton(
                          label: 'SETTINGS', icon: Icons.settings_applications),
                    )
                  ],
                ),
              ),
              Row(
                children: pageIndicator,
              )
            ],
          )),
    );
  }
}
