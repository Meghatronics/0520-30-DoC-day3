import 'package:day3_30doc/pages/news_page.dart';
import 'package:day3_30doc/util/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:day3_30doc/util/objects.dart';

List<Widget> pageIndicator = [
  Expanded(
      child: Container(
    height: 5,
    color: kNavigationButtonActiveIconColor,
  )),
  Expanded(
      child: Container(
    height: 5,
    color: kNavigationButtonInactiveIconColor,
  )),
  Expanded(
      child: Container(
    height: 5,
    color: kNavigationButtonInactiveIconColor,
  )),
];

class NavigationButton extends StatelessWidget {
  NavigationButton({
    @required this.label,
    @required this.icon,
    @required this.onNavigate,
  });

  final IconData icon;
  final String label;
  final Function onNavigate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onNavigate,
      child: Container(
        color: Colors.transparent,
        constraints: BoxConstraints.expand(height: 80),
        child: Column(
          children: <Widget>[
            Spacer(),
            Icon(
              icon,
              size: 30,
              color: kNavigationButtonActiveIconColor,
            ),
            Spacer(),
            Text(label,
                style: GoogleFonts.quicksand(
                    color: kNavigationButtonActiveTextColor)),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class NewsScrollCard extends StatelessWidget {
  NewsScrollCard(this.news);
  final News news;

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewsPage(news)));
      },
      child: AnimatedContainer(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(vertical: 4.0),
        height: kNewsScrollCardHeight,
        decoration: BoxDecoration(
          color: kNewsScrollCardForeColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: kNewsScrollCardShadowColor,
                blurRadius: 8,
                spreadRadius: 0,
                offset: Offset(0, 10))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    news.headline,
                    style: kNewsScrollCardHeadlineStyle,
                    overflow: kNewsScrollCardHeadlineOverflow,
                    maxLines: kNewsScrollCardHeadlineMaxLines,
                  ),
                  Text(
                    news.body,
                    style: kNewsScrollCardBodyStyle,
                    overflow: kNewsScrollCardBodyOverflow,
                    maxLines: kNewsScrollCardBodyMaxLines,
                  ),
                  Divider(color: kNavigationButtonActiveIconColor, endIndent: 50,),
                  Text(
                    news.publishDate.toString().substring(0, 16),
                    textAlign: TextAlign.left,
                    style: kNewsScrollCardDateStyle,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kGradientColor2,
                  image: DecorationImage(image: NetworkImage('https://picsum.photos/150/300'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(70, 70),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: kNewsScrollCardShadowColor,
                        blurRadius: 8,
                        spreadRadius: 0,
                        offset: Offset(0, 10))
                  ],
                ),
              ),
            )
          ],
        ),
        duration: Duration(microseconds: 2000),
      ),
    );
  }
}
