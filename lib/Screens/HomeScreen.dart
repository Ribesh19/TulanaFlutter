import 'package:Tulanadotcom/Components/BestDealsBanner.dart';
import 'package:Tulanadotcom/Components/CustomSearchBar.dart';
import 'package:Tulanadotcom/Components/NavigationDrawer.dart';
import 'package:Tulanadotcom/Components/SubBannerList.dart';
import 'package:Tulanadotcom/Components/TileCategoriesList.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: getDrawer(context),
        body: CustomScrollView(
      slivers: [
         SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            expandedHeight: MediaQuery.of(context).size.height * 0.11,
            floating: true,
            centerTitle: false,
            leading:
            Container(
              margin: EdgeInsets.only(top: 14),
              child: IconButton(
                  icon: Icon(Icons.menu),
                  iconSize: 30.0,
                  color: Colors.black87,
                  onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                  }),
            ),
            title: Container(
              margin: EdgeInsets.only(top: 14),
              child: Image(
                image: AssetImage(
                    '/Users/ribeshmaharjan/Downloads/Tulana/Tulana/Tulanadotcom/assets/banner/tulanalogo3.png'),
                height: 160,
              ),
            ),
            //shadowColor: kPrimaryColor,
            flexibleSpace: CustomSearchBar()),
        SliverList(
          delegate:  SliverChildListDelegate([
            Container(
              height: MediaQuery.of(context).size.height*0.07,
                padding: EdgeInsets.symmetric(vertical: 4),
                color: kAppBarColor,
              child: SubBannerCategoryList(),
            ),
            Stack(
              children: <Widget>[
                Container(
                height: MediaQuery.of(context).size.height*0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('/Users/ribeshmaharjan/Downloads/Tulana/Tulana/Tulanadotcom/assets/banner/tulana_banner4.png',),
                    fit: BoxFit.cover
                  )
                ),
              ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5),
              padding: EdgeInsets.all(8),
              width:  MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width* 0.2,
//              decoration: BoxDecoration(
//                shape: BoxShape.rectangle,
//                  color: Colors.black.withOpacity(0.15)
//                //color: Colors.black,
//              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        kPurpleBackgroundColor,
                      //  Colors.purple.withOpacity(0.1),
                     //   kPurpleBackgroundColor,
                        Colors.white
                      ])),
                ),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.47),
                  padding: EdgeInsets.all(20),
                  width:  MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width* 0.37,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black.withOpacity(0.1)),
                  child: TileCategoryList(),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
               // margin: EdgeInsets.symmetric(horizontal: 10),
                width:  MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.41,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.black.withOpacity(0.1)
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.all(kDefaultPadding),
                  width:  MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Best Offers',
                            style: TextStyle(
                                fontSize:  MediaQuery.of(context).size.width* 0.018,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.8
                            ),
                          ),
                          Text(
                            'See more',
                            style: TextStyle(
                              fontSize:  MediaQuery.of(context).size.width* 0.011,
                              letterSpacing: 0.8,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                      BestDealsBanner(),
                    ],
                  ),
                ),
            ],
            ),
            Container(
              margin:  EdgeInsets.only(top: 4),
              height: MediaQuery.of(context).size.height*0.07,
              padding: EdgeInsets.symmetric(vertical: 4),
              color: kAppBarColor,
              child: Center(
                child: Container(
                  child: Text('Back to top',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        letterSpacing: 0.8,
                        fontSize:  MediaQuery.of(context).size.width* 0.01
                    ),),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                height: MediaQuery.of(context).size.height*0.12,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.black.withOpacity(0.1)
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage(
                            '/Users/ribeshmaharjan/Downloads/Tulana/Tulana/Tulanadotcom/assets/banner/tulanalogo3.png'),
                        height: MediaQuery.of(context).size.height*0.12,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                        Icons.copyright,
                        size: MediaQuery.of(context).size.width * 0.01,
                        color: kPrimaryColor
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Ribesh Maharjan",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.01,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                        letterSpacing: 0.8
                      ),
                    ),
                  ],
                ),
              ]
            ),
          ]
          )
        )
      ],
    ));
  }
}
