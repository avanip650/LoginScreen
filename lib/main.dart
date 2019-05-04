import 'package:flutter/material.dart';
import 'package:loginscreen/home.dart';

void main() => runApp(MaterialApp(
  home: LoginScreen(),
  debugShowCheckedModeBanner: false,
));

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Login Screen',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body:new Stack(
        fit: StackFit.expand,
        children: <Widget>[

          new Image(
            image: AssetImage('asset/download.jpg'),
            fit: BoxFit.cover,
            color: Colors.grey,
            colorBlendMode: BlendMode.screen,
          ),

          Form(
            child: new Theme(
            data: ThemeData(
              brightness: Brightness.dark,accentColor: Colors.teal,hintColor: Colors.black,buttonTheme: ButtonThemeData(buttonColor: Colors.teal)),

              child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              child: new Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//              Text('Login Details',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black)),
//                new FlutterLogo(size: 50,colors: Colors.teal,),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.white,
               child: Column(
                    children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      child: TextFormField(
                      keyboardType: TextInputType.text,
                      autocorrect: false,
                      maxLines: 1,
                      decoration: new InputDecoration(hintText: 'Enter UserName', labelText: 'UserName'),
                      ),
                    ),

                    Container(
                    margin: EdgeInsets.fromLTRB(15, 8, 15, 8),
                    child: TextFormField(
                    keyboardType: TextInputType.text,
                    autocorrect: false,
                    maxLines: 1,
                    decoration: new InputDecoration(hintText: 'Enter Email', labelText: 'Email'),
                    ),
                    ),

                    RaisedButton(onPressed: (){
                    Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new HomeScreen()));
                    },
                    textColor: Colors.white,
                    child: Text('Submit'),
                    )
                    ],
                    ),
                ),
              ],
              ),
              ),
            )
            )
        ],
      )
    );
  }
}
