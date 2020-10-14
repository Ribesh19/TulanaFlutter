import 'package:flutter/material.dart';

import '../constants.dart';

class TileCategoryList extends StatefulWidget {
  @override
  _TileCategoryListState createState() => _TileCategoryListState();
}

class _TileCategoryListState extends State<TileCategoryList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildContainerCategory(context,
        '/Users/ribeshmaharjan/Downloads/Tulana/Tulana/Tulanadotcom/assets/category/accesories.jpg',
        'Electronics'),
        buildContainerCategory(context,
            '/Users/ribeshmaharjan/Downloads/Tulana/Tulana/Tulanadotcom/assets/category/home_appliances.jpg',
            'Home & Appliance'),
        buildContainerCategory(context,
            '/Users/ribeshmaharjan/Downloads/Tulana/Tulana/Tulanadotcom/assets/category/fashion.jpg',
            'Clothings'),
        buildContainerCategory(context,
            'category/health_and_beauty.jpg',
            'Health & Beauty'),
      ],
    );
  }

  Container buildContainerCategory(BuildContext context, String Image, String Title) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        height: MediaQuery.of(context).size.width* 0.6,
        width: MediaQuery.of(context).size.width * 0.23,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          //borderRadius: BorderRadius.all(Radius.circular(4)),
          boxShadow: [
            BoxShadow(
                blurRadius: 7,
                spreadRadius: 1,
                color: Colors.black12)
          ],
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
        Title,
              style: TextStyle(
                fontSize:  MediaQuery.of(context).size.width* 0.018,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.8
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width* 0.01,
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.47,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Image,),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Spacer(),
            Text(
              'Compare now',
              style: TextStyle(
                  fontSize:  MediaQuery.of(context).size.width* 0.011,
                  letterSpacing: 0.8,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      );
  }
}
