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
    return Form(
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.symmetric(vertical: 26.0)),
               TextFormField(
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
             
          ),),
           Padding(padding: const EdgeInsets.symmetric(vertical: 7.0)),
          TextFormField(
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding ),
            child: TextFormField(
              controller: pass,
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              cursorRadius: Radius.circular(6.0),
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: "password",
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding ),
                  child: Icon(Icons.lock,color: Colors.blue,),
                  
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding ),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                if (visa.text.trim().isNotEmpty&&
                 pass.text.trim().isNotEmpty&&
                 email.text.trim().isNotEmpty){
                print("Buying succeded");
                }
              },
              child: Text(
                "OK".toUpperCase(),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding ),
      
        ],
      ),
    );
  }
}
