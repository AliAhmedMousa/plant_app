import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart';
import'package:plant_app/screens/details/details_screen.dart';


class ActionsScreen extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     TextEditingController visa = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    String uvisa="123";
    String uemail="ali";
    String upass="12345678";
    return Scaffold(
      appBar: AppBar(
      
      ),
      body: Center(
        
     child: Column(
        children: [
          Padding(padding: const EdgeInsets.symmetric(vertical: 26.0)),
               Container(
               child: TextFormField(
                controller: visa,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            cursorRadius: Radius.circular(6.0),
             
            decoration: InputDecoration(
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
             labelText: "Visa",
              hintText: "Visa card",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding ),
                child: Icon(Icons.credit_card,color: Colors.blue,),
              ),
             
          )),),
           Padding(padding: const EdgeInsets.symmetric(vertical: 7.0)),
           Container(
           child: TextFormField(
            controller: email,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            
            decoration: InputDecoration(
              
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              labelText: "email",
              hintText: "Your email",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding ),
                child: Icon(Icons.person,color: Colors.blue,),
              ),
            ),
          ),),
          
            Padding(padding: const EdgeInsets.symmetric(vertical: 7.0)), 
             Container(
           child: TextFormField(
            controller: pass,
           obscureText: true,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              labelText: "password",
              hintText: "Your password",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding ),
                child: Icon(Icons.person,color: Colors.blue,),
              ),
            ),
          ),),
       
             ElevatedButton(
                  child: Text("OK"),
                  onPressed: () {
                    if (uemail == email.text&&uvisa == visa.text&&upass == pass.text ) {
 showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Material Alert Dialog'),
        content: Text('Do you really want to delete?'),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>DetailsScreen (),
                ),
              );
                    //action code for "Yes" button
              },
              child: Text('Yes')),
        
        ],
      );
    });} 
                
                  },
                ),
        ]
      
      ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
      
     


  
}

  