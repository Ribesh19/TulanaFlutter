import 'package:Tulanadotcom/Components/BrandPriceList.dart';
import 'package:Tulanadotcom/Models/BestDealModel.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BestDealsBanner extends StatefulWidget {
  @override
  _BestDealsBannerState createState() => _BestDealsBannerState();
}

class _BestDealsBannerState extends State<BestDealsBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.all(kDefaultPadding),
      width:  MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(
          color: kPurpleBackgroundColor.withOpacity(0.3)
      ),
      //color: kPurpleBackgroundColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
       // controller: _scrollController,
        shrinkWrap: true,
        itemCount: samsungModels.length,
        itemBuilder: (context, index) => _buildItem(context, index),
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6,vertical: 6),
      height: MediaQuery.of(context).size.width* 0.13,
      width: MediaQuery.of(context).size.width * 0.2,
      padding: EdgeInsets.all(8),
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
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            child: Image.network(samsungModels[index].images,
                fit: BoxFit.contain),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width* 0.01,
          ),
          Text(
            samsungModels[index].name,
            style: TextStyle(
                fontSize:  MediaQuery.of(context).size.width* 0.01,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.8,
            ),
          ),
          Spacer(),
          BrandsPriceList (Price:samsungModels[index].price, logo: 'assets/brand logos/darazlogo.png'),
          BrandsPriceList (Price:samsungModels[index].sastodealPrice, logo: 'assets/brand logos/sastodeallogo.png'),
          BrandsPriceList (Price:samsungModels[index].redDokoPrice, logo: 'assets/brand logos/reddokologo.png'),
         // BrandsPriceList (Price:samsungModels[index].okDamPrice, logo: 'assets/brand logos/okdamlogo.png'),
          Spacer(),
          FlatButton(
              onPressed: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                height: MediaQuery.of(context).size.width* 0.02,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                    color: kYellowColor,
                    borderRadius: BorderRadius.circular(4),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 30,
                          color: Colors.black.withOpacity(0.3))
                    ]

                ),
                child: Center(
                  child: Text(
                    'See details',
                    style: TextStyle(
                        fontSize:  MediaQuery.of(context).size.width* 0.008,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        letterSpacing: 0.8
                    ),
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}


