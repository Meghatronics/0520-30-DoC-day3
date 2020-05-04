import 'package:day3_30doc/util/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:day3_30doc/util/objects.dart';

class NewsPage extends StatelessWidget {
  NewsPage(this.newsToShow);

  final News newsToShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        mini: true,
        backgroundColor: kGradientColor2,
        child: Icon(
          Icons.arrow_back_ios,
          color: kGradientColor1,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
                  newsToShow.headline,
                  textAlign: TextAlign.center,
                  style: kHeadingTextStyle.copyWith(
                      letterSpacing: 0, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 0),
                  // height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15)),
                    color: Color(0xffdddddd),
                  ),
                  child: SingleChildScrollView(
                      child: Text(newsToShow.body, style: kNewsBodyTextStyle)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
