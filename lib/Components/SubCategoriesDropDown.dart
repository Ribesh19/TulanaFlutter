
import 'package:flutter/material.dart';
import '../constants.dart';


class SubCategoryDropDown extends StatefulWidget {
  @override
  _SubCategoryDropDownState createState() => _SubCategoryDropDownState();
}

class _SubCategoryDropDownState extends State<SubCategoryDropDown> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.25),
      child: Container(
        decoration: BoxDecoration(
          color: kBackgroundColor,
          //  borderRadius: BorderRadius.only(topLeft: Radius.circular(4),bottomLeft:Radius.circular(4) ),
        shape: BoxShape.rectangle,
        ),
        padding: EdgeInsets.all(8.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
              value: _value,
              icon: Icon(Icons.arrow_drop_down,
              color: Colors.black87,),
              style: TextStyle(
                 fontSize: 14,
                color: Colors.black87,
                  letterSpacing: 0.8
              ),
              items: [
                DropdownMenuItem(
                  child: Text("All Departments"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Electronic Devices"),
                  value: 2,
                ),
                DropdownMenuItem(
                    child: Text("Electronic Accessories"),
                    value: 3
                ),
                DropdownMenuItem(
                    child: Text("TV & Home Appliances"),
                    value: 4
                ),
                DropdownMenuItem(
                    child: Text("Health & Beauty"),
                    value: 5
                ),
                DropdownMenuItem(
                    child: Text("Babies & Toys"),
                    value: 6
                ),DropdownMenuItem(
                    child: Text("Groceries & Pets"),
                    value: 7
                ),DropdownMenuItem(
                    child: Text("Home & Lifestyle"),
                    value: 8
                ),DropdownMenuItem(
                    child: Text("Women's Fashion"),
                    value: 9
                ),DropdownMenuItem(
                    child: Text("Men's Fashion"),
                    value: 10
                ),DropdownMenuItem(
                    child: Text("Watches & Accessories"),
                    value: 11
                ),DropdownMenuItem(
                    child: Text("Sports & Outdoor"),
                    value: 12
                ),
                DropdownMenuItem(
                    child: Text("Automotive & Motorbike"),
                    value: 13
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
        ),
      ),
    );
  }
}

