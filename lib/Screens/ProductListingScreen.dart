import 'package:Tulanadotcom/Components/CustomSearchBar.dart';
import 'package:Tulanadotcom/Components/NavigationDrawer.dart';
import 'package:Tulanadotcom/Components/ProductList.dart';
import 'package:Tulanadotcom/Components/SortingBarBanner.dart';
import 'package:Tulanadotcom/Components/SubBannerList.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ProductListingScreen extends StatefulWidget {
  @override
  _ProductListingScreenState createState() => _ProductListingScreenState();
}

class _ProductListingScreenState extends State<ProductListingScreen> {

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
                Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  padding: EdgeInsets.symmetric(vertical: 4),
                  //color: kBackgroundColor,
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                      border: Border(
                        bottom: BorderSide(
                          width: 0.5,
                          color: Colors.grey
                        )

                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            blurRadius: 30,
                            color: Colors.black.withOpacity(0.3))
                      ]
                  ),
                  child: SortingBarBanner(),
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
                      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      padding: EdgeInsets.all(kDefaultPadding),
                      width:  MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white
                      ),
                      child: ProductList(),
                    ),
                  ],
                ),

              ],
              ),
              ),
        ],
      ),
    );
  }
}
