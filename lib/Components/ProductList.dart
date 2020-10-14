import 'package:Tulanadotcom/Components/ProductListingPriceList.dart';
import 'package:Tulanadotcom/Components/StarRating.dart';
import 'package:Tulanadotcom/Models/BestDealModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 12),
            width: MediaQuery.of(context).size.width * 0.14,
            height: MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.6),
            ),
            child: Center(
              child: Text(
                'Space for Ad'.toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.8)
                ),
              ),
            ),
          ),
          VerticalDivider(
            // width: 3,
            thickness: 2,
            color: Colors.black87.withOpacity(0.3),
          ),
          Container(
            margin: EdgeInsets.only(left: 12),
            height: MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.width* 0.76,
            //color: Colors.grey.withOpacity(0.6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(samsungModels[1].images,
                    fit: BoxFit.contain),
                Flexible(
                  child: Column(
                    children: [
                      Text(
                        samsungModels[4].name,
                        style: TextStyle(
                          fontSize:  MediaQuery.of(context).size.width* 0.018,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.8,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      //StarRating(value: 4,),
                      Spacer(),
                      ProductListingPriceList (Price:samsungModels[4].price, logo: 'assets/brand logos/darazlogo.png'),
                      ProductListingPriceList (Price:samsungModels[4].sastodealPrice, logo: 'assets/brand logos/sastodeallogo.png'),
                      ProductListingPriceList (Price:samsungModels[4].redDokoPrice, logo: 'assets/brand logos/reddokologo.png'),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
