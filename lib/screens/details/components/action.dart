import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';


class actions extends StatelessWidget {
  const actions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController visa = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    String uemail="ali";
    String upass="12345678";
    String uvisa="123";
    return Form(
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
        TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
             ElevatedButton(
                  child: Text("OK"),
                  onPressed: () {
                    if (uemail == email.text &&
                        upass == pass.text&&uvisa==visa.text) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondRoute()));
                    } 
                  },
                ),
        ]
      
      ));
  }
}

 class SecondRoute extends StatelessWidget {
   const SecondRoute({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}