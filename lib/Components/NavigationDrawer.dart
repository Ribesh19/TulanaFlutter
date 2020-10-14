import 'package:flutter/material.dart';

import '../constants.dart';

Drawer getDrawer(BuildContext context)
{
  return Drawer(
    child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.width * 0.05,
          child: DrawerHeader(
            decoration: BoxDecoration(
                color: kAppBarColor
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                Icon(
                    Icons.account_circle,
                    size: MediaQuery.of(context).size.width * 0.02,
                    color: Colors.white
                ),
                SizedBox(
                  width: 20,
                ),
                // Text("${samsungModels[index].price.toInt()}",
                Text("Welcome",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.016,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 0.8
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ListView(children: [
            ExpansionTile(
              title: Text("Electronic Devices"),
              children: <Widget>[
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Text("Mobiles"),
                )),
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Text("Tablets"),
                )),
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Text("Laptops"),
                )),
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Text("Desktops"),
                )),
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Text("Gaming Consoles"),
                )),
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Text("Cameras"),
                )),
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Text("Printers"),
                )),
              ],
            ),
            ExpansionTile(
              title: Text("Electronic Accessories"),
              children: <Widget>[
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
                  child: Text("Children 1"),
                )),
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
                  child: Text("Children 1"),
                )),
              ],
            ),
            ExpansionTile(
              title: Text("TV & Home Appliances"),
              children: <Widget>[
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
                  child: Text("Children 1"),
                )),
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
                  child: Text("Children 1"),
                )),
              ],
            ),
            ExpansionTile(
              title: Text("Health & Beauty"),
              children: <Widget>[
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
                  child: Text("Children 1"),
                )),
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
                  child: Text("Children 1"),
                )),
              ],
            ),
            ExpansionTile(
              title: Text("Babies & Toys"),
              children:<Widget>[
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
                  child: Text("Children 1"),
                )),
                Align(alignment: Alignment.topLeft,child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
                  child: Text("Children 1"),
                )),
              ],
            ),
            ExpansionTile(
              title: Text("Groceries & Pets"),
              children: <Widget>[Text("children 1"), Text("children 2")],
            ),
            ExpansionTile(
              title: Text("Home & Lifestyle"),
              children: <Widget>[Text("children 1"), Text("children 2")],
            ),
            ExpansionTile(
              title: Text("Women's Fashion"),
              children: <Widget>[Text("children 1"), Text("children 2")],
            ),
            ExpansionTile(
              title: Text("Men's Fashion"),
              children: <Widget>[Text("children 1"), Text("children 2")],
            ),
            ExpansionTile(
              title: Text("Watches & Accessories"),
              children: <Widget>[Text("children 1"), Text("children 2")],
            ),
            ExpansionTile(
              title: Text("Sports & Outdoor"),
              children: <Widget>[Text("children 1"), Text("children 2")],
            ),
            ExpansionTile(
              title: Text("Automotive & Motorbike"),
              children: <Widget>[Text("children 1"), Text("children 2")],
            ),
          ]),
        )
      ],
    ),
  );
}