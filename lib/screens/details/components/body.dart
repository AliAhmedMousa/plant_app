import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';


import 'image_and_icons.dart';
import 'title_and_price.dart';


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
                    
                        onPressed: (){},// => buy(context) ,
                        
                        
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
                  onPressed: () {
                   Navigator.pop(context);  
                  },
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

  void buy(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("sent delivered handed"),
            content: Text("Leave your number and wait for us to call you"),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
