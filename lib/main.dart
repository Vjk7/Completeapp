

import 'package:flutter/material.dart';
import 'forgetpage.dart';

void main()
{
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage(),
    );
  }
}
bool t=true;
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        padding: EdgeInsets.only(bottom: 10.0),
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(14.0, 100.0, 0, 50.0),
          child: Text(
            "Welcome",
            style: TextStyle(
              fontFamily: "m23",
              fontSize: 60,
              color: Color(0xff62f138)
            ),
          ),
        ),
        userid(),
        password(),
        Container(
          padding:EdgeInsets.fromLTRB(280.0, 2.0, 0, 20.0),
          child:InkWell(
            child:Text("Forget password",
            style: TextStyle(color: Color(0xff0ab102),
                decoration: TextDecoration.underline
            ),
          ),
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>forgetpage()));
            }
          ),
        ),
      Container(
        padding: EdgeInsets.only(right:70.0,left: 70.0,bottom:0),
        child: Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.grey,
          color: Color(0xff33ff00),
          elevation: 10.0,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){},
                child: Container(
                  padding:EdgeInsets.all(15.0),
                  child: Text("Login",
                  style: TextStyle(color: Colors.white,
                  fontSize:30,fontWeight: FontWeight.bold )),
                ),
              ),
            ],
          )
        ),
      )

      ],
      )
    );
  }
}
class password extends StatefulWidget {
  const password({Key? key}) : super(key: key);

  @override
  _passwordState createState() => _passwordState();
}

class _passwordState extends State<password> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 15.0),
        child:
        TextField(
          obscureText: t,
          decoration: InputDecoration(
              labelText: "Enter your password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(!t?Icons.remove_red_eye:Icons.remove_red_eye_outlined),
                onPressed: (){
                  setState(() {
                    t=!t;
                  });
                },
              ),
                focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff33ff00))
                  ),
          )
        )
    );
  }
}
class userid extends StatefulWidget {
  const userid({Key? key}) : super(key: key);

  @override
  _useridState createState() => _useridState();
}

class _useridState extends State<userid> {
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 15.0),
        child:
        TextField(
        decoration: InputDecoration(
        labelText: "Enter your user id",
        prefixIcon: Icon(Icons.account_circle),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff33ff00))
        )
        )

    ));
  }
}




