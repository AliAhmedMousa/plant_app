import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class actions extends StatelessWidget {
  const actions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.symmetric(vertical: 26.0)),
               TextFormField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            cursorRadius: Radius.circular(6.0),
             onSaved: (visa) {},
            decoration: InputDecoration(
             border: OutlineInputBorder(),
              hintText: "Visa card",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding ),
                child: Icon(Icons.credit_card),
              ),
             
          ),),
           Padding(padding: const EdgeInsets.symmetric(vertical: 7.0)),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            cursorRadius: Radius.circular(10.0),
            onSaved: (email) {},
            decoration: InputDecoration(
              
              border: OutlineInputBorder(),
              hintText: "Your email",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding ),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding ),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColor,
              cursorRadius: Radius.circular(6.0),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding ),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding ),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login".toUpperCase(),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding ),
      
        ],
      ),
    );
  }
}
