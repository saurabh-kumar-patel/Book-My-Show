import 'package:bookyour_show/number_verify.dart';
import 'package:bookyour_show/page/fontpage.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(40)),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/img/patel.jpg"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enjoy faster show booking through our",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              Text(
                "recommendations tailored for you.",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              SizedBox(
                width: 350,
                height: 20,
                child: Divider(
                  thickness: 2,
                  color: Colors.teal.shade300,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => fontpage()),
                  );
                },
                child: Card(
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 4,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: ListTile(
                    leading: Icon(Bootstrap.google),
                    title: Text(" Continue with Google"),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Card(
                elevation: 4,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ListTile(
                  leading: Icon(Icons.email_outlined),
                  title: Text("Continue with Email"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "OR",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => number_verify()),
                  );
                },
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: ListTile(
                    leading: Flag(Flags.india),
                    title: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                          text: "+91 ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                              text: "Continue with mobile number",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
