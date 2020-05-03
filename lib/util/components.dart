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
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: kNewsScrollCardHeight,
      decoration: BoxDecoration(
        color: kNewsScrollCardForeColor,
        borderRadius: BorderRadius.circular(15),
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
            child: Column(
              children: <Widget>[
                Text(
                  news.headline,
                  style: kNewsScrollCardHeadlineStyle,
                ),
                Text(
                  news.body,
                  style: kNewsScrollCardBodyStyle,
                  overflow: kNewsScrollCardBodyOverflow,
                  maxLines: kNewsScrollCardBodyMaxLines,
                ),
                Divider(),
                Text(news.publishDate.toString(), style: kNewsScrollCardDateStyle,)
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kGradientColor2,
                borderRadius: BorderRadius.circular(15),
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
    );
  }
}
