import 'package:flutter/material.dart';

import '../constants.dart';


class SortingBarBanner extends StatefulWidget {
  @override
  _SortingBarBannerState createState() => _SortingBarBannerState();
}

class _SortingBarBannerState extends State<SortingBarBanner> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 45),
      child: Row(
        children: [
          Text(
            '500 results for ',
            style: TextStyle(
              fontWeight: FontWeight.w300,
//                  color: selectedIndex == index
////                      ? kTextColorDark.withOpacity(0.9)
////                      : kTextColorDark.withOpacity(0.4),
              color: Colors.black87,
              letterSpacing: 0.8,
              fontSize: MediaQuery.of(context).size.width* 0.01,),
          ),
          Text(
            '"Selected product"',
            style: TextStyle(
              fontWeight: FontWeight.w800,
//                  color: selectedIndex == index
////                      ? kTextColorDark.withOpacity(0.9)
////                      : kTextColorDark.withOpacity(0.4),
              color: Colors.deepOrangeAccent.withOpacity(0.9),
              letterSpacing: 0.8,
              fontSize: MediaQuery.of(context).size.width* 0.01,),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              //  borderRadius: BorderRadius.only(topLeft: Radius.circular(4),bottomLeft:Radius.circular(4) ),
              shape: BoxShape.rectangle,
            ),

            child: Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Row(
                children: [
                  Text(
                    'Sort by: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
//                  color: selectedIndex == index
////                      ? kTextColorDark.withOpacity(0.9)
////                      : kTextColorDark.withOpacity(0.4),
                      color: Colors.black87,
                      letterSpacing: 0.8,
                      fontSize: MediaQuery.of(context).size.width* 0.008,),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(
                        value: _value,
                        icon: Icon(Icons.arrow_drop_down,
                          color: Colors.black87,),
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width* 0.008,
                            color: Colors.black87,
                            letterSpacing: 0.8
                        ),
                        items: [
                          DropdownMenuItem(
                            child: Text("Featured"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Price: High to Low"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                              child: Text("Price: Low to High"),
                              value: 3
                          ),
                          DropdownMenuItem(
                              child: Text("Newest Arrivals"),
                              value: 4
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
