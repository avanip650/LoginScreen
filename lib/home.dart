import 'package:flutter/material.dart';
import 'package:loginscreen/tabbar/firsttab.dart';
import 'package:loginscreen/tabbar/secondtab.dart';
import 'package:loginscreen/tabbar/thirdtab.dart';

void main() => runApp(MaterialApp(

  home: HomeScreen(),

));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class Constants{
    static const String subcribe = "Subcribe";
    static const String setting = "Setting";
    static const String signout = "Signout";

    static const List<String> choice = <String>[
      subcribe, setting, signout
    ];
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController tabController;
  int _selectedIndex = 0;

  void choiceAction(String choice){

    if(choice == Constants.setting){
      print('AlertDialog');
     showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
         title: Text('Reset Settings?'),
         content: const Text('This will reset your device to its default factory settings.'),
         actions: <Widget>[
           FlatButton(onPressed: (){
             Navigator.of(context).pop();
           }, child: new Text('CANCEL')),
           FlatButton(onPressed: (){
             Navigator.of(context).pop();
           }, child: new Text('ACCEPT'))
         ],
       );
     });
    }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _widgetOptions = [new FirstTab(), new SecondTab(), new ThirdTab(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Home Screen'),
        backgroundColor: Colors.black,
        actions: <Widget>[
         PopupMenuButton(
           onSelected: choiceAction,
             itemBuilder: (BuildContext contex){
               return Constants.choice.map((String choice){
                 return PopupMenuItem<String>(
                     value: choice,
                     child: Text(choice)
                 );
               }).toList();
             }
         ),
          Container(
            margin: EdgeInsets.all(10),
          ),
        ],
      ),
     drawer: new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: new Text('Avani Patel',style: TextStyle(color: Colors.white,fontSize: 16),),
              accountEmail: new Text('avanip.variance@gmail.com',style: TextStyle(color: Colors.white,fontSize: 16),),
            decoration: BoxDecoration(
              color: Colors.teal
            ),
            otherAccountsPictures: <Widget>[
              new GestureDetector(
                child: CircleAvatar(
                  backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),
                ),
              )
            ],
            currentAccountPicture: new GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.black,
                child: new Text('A',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          new ListTile(
            title: new Text('Home',style: TextStyle(fontSize: 16)),
            leading: new Icon(Icons.home),
            onTap: () => Navigator.pop(context),
          ),
          Divider(height: 2.0,),
          new ListTile(
            title: new Text('Share App',style: TextStyle(fontSize: 16),),
            leading: new Icon(Icons.share),
            trailing: new Icon(Icons.arrow_forward),
            onTap: () => Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context) => new SecondTab())),
//              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => new BusinessPage(userName))),

          ),
          Divider(height: 2.0,),
          new ListTile(
            title: new Text('Setting',style: TextStyle(fontSize: 16),),
            leading: new Icon(Icons.settings),
            onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => new FirstTab())),
          ),
//            Divider(height: 2.0,),
          new ExpansionTile(
            title: new Text('Details',style: TextStyle(fontSize: 16,color: Colors.teal),),
            children: <Widget>[
              new ListTile(
                title: new Text('Home'),
                leading: new Icon(Icons.home),
                onTap: () => Navigator.pop(context),
              ),
              new ListTile(
                title: new Text('Share App'),
                leading: new Icon(Icons.share),
                onTap: () => Navigator.push(context,new MaterialPageRoute(builder: (BuildContext context) => new SecondTab())),
              ),
            ],
          ),
        ],
      ),
     ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.share), title: Text('ShareApp')),
        BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings')),
      ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.teal,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

}

