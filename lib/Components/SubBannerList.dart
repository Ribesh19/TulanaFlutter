import 'package:flutter/material.dart';

class SubBannerCategoryList extends StatefulWidget {
  @override
  _SubBannerCategoryListState createState() => _SubBannerCategoryListState();
}

class _SubBannerCategoryListState extends State<SubBannerCategoryList> {

  List<String> categories = [
    "Steal Deals",
    "Most Viewed",
    "Today's Offers",
    "Customer Service"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 65),
      //height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCatgory(index)),
    );
  }
  Widget buildCatgory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.w400,
//                  color: selectedIndex == index
////                      ? kTextColorDark.withOpacity(0.9)
////                      : kTextColorDark.withOpacity(0.4),
              color: Colors.white,
                  letterSpacing: 0.8,
                  fontSize: MediaQuery.of(context).size.width* 0.01,),
            ),
/*            Container(
              padding: EdgeInsets.only(left:8,right: 8),
              margin: EdgeInsets.only(top: 3, right: 15),
              height: 2,
              width: 40,
//              color: selectedIndex == index
//                  ? Colors.black.withOpacity(0.8)
//                  : Colors.transparent,
            color: selectedIndex == index
                  ? Colors.white.withOpacity(0.8)
                  : Colors.transparent,
            )*/
          ],
        ),
      ),
    );
  }
}
