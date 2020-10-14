import 'package:flutter/material.dart';

import '../constants.dart';

class BrandsPriceList extends StatelessWidget {
  String Price;
  String logo;
   BrandsPriceList({
    Key key,
    this.Price,
     this.logo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 20,
            width: 60,
            child:  Image.asset(logo),
          ),
          Row(
            children: <Widget> [
              Icon(
                  Icons.euro_symbol,
                  size: MediaQuery.of(context).size.width * 0.01,
                  color: kSecondaryColor
              ),
              // Text("${samsungModels[index].price.toInt()}",
              Text("${ Price}",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.01,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}