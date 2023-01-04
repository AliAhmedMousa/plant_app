import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/actions_screens.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';
import 'package:plant_app/screens/details/actions_screens.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 50),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  
                  style: ButtonStyle( 
                    backgroundColor: MaterialStatePropertyAll(kPrimaryColor),

                    
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                           
                        ),
                        side: BorderSide(color:kPrimaryColor )
                    ),
                  )
              
                    ),
                    
                        onPressed: () {


                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ActionsScreen()
              ));
                        },
                        
                        
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                  ),
                ),
                
              ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
