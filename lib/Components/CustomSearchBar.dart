import 'package:Tulanadotcom/Components/SubCategoriesDropDown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 60,
        ),
        Container(
          //padding: EdgeInsets.all(8),
         //padding: EdgeInsets.only(top: 8),
          margin: EdgeInsets.only(top: 12,right: 5),
          height: MediaQuery.of(context).size.width* 0.0334,
          // height: MediaQuery.of(context).size.height* 0.8,
          width: MediaQuery.of(context).size.width* 0.6,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: kPrimaryColor,
                width: 2
              ),
//              boxShadow: [
//                BoxShadow(
//                    offset: Offset(0, -2),
//                    blurRadius: 30,
//                    color: Colors.black.withOpacity(0.46))
//              ]
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            //  Spacer(),
             SubCategoryDropDown(),
             // SubCategoryDropDown(),
              Container(
                //margin:  EdgeInsets.only(top: 16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width* 0.3,
                  child: TextField(
                    onChanged: (value) {
                      //search value
                    },
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search Products",
                       // prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 9
                          // vertical: 9
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
        FlatButton(
            onPressed: (){},
            child: Container(
              margin: EdgeInsets.only(top: 12,right: 45),
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
              height: MediaQuery.of(context).size.width* 0.0334,
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
              child: Text(
                'Get Products'.toUpperCase(),
                style: TextStyle(
                  fontSize:  MediaQuery.of(context).size.width* 0.012,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 0.8
                ),
              ),
            )
        )

      ],
    );
  }
}
