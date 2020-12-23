import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/Homepage.dart';


class MyLoginPage extends StatefulWidget {
  static String tag = "login - page ";
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {

  @override
  Widget build(BuildContext context) {

     final logo = Hero(tag: "hero", child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      child: Image.asset('images/flutter-logo.jpg'),
       ),);

     final email  = TextFormField(
       keyboardType:TextInputType.emailAddress,
       autofocus: false,
       initialValue: 'omolaja.abubakar05@gmail.com',
       decoration: InputDecoration(
           hintText: 'Email',
           contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
           border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(32.0),
       ),
       ),
     );

     final password  = TextFormField(
       autofocus: false,
       initialValue: 'Some Password',
       decoration: InputDecoration(
         hintText: 'Password',
         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(32.0),
         ),
       ),
     );

     final loginButton = Padding(
       padding: EdgeInsets.symmetric(vertical: 16.0),
       child: Material(
         shadowColor: Colors.lightBlueAccent.shade100,
         // elevation: 5.0,
         child: MaterialButton(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(18.0),
           ),
           minWidth: 200.0,
           height: 42.0,
           onPressed:() =>{
             Navigator.of(context).pushNamed(MyHomePage.tag),
           },
           color: Colors.lightBlue,
           child: Text('Log In',style: TextStyle(color: Colors.white),),
         )
       ),
     );

     final forgotLabel = FlatButton(onPressed: (){}, child: Text(
       'Forgot Password',
       style: TextStyle(color: Colors.black54) ,
     ));


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right: 24.0 ),
          children: [
            logo,
            SizedBox(height: 40.0 ),
            email,
            SizedBox(height: 8.0 ),
            password,
            SizedBox(height: 24.0 ),
            loginButton,
            SizedBox(height: 2.0 ),
            forgotLabel
          ],
        ),
      ),
    );
  }
}
