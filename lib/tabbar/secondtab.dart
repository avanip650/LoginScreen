import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> with TickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  TabBar getTabBar(){
    return new TabBar(indicatorColor: Colors.teal,
      labelColor: Colors.teal,
      unselectedLabelColor: Colors.black,

      tabs: <Tab>[
        new Tab(icon: Icon(Icons.camera),),
        new Tab(icon: Icon(Icons.chat),),
        new Tab(icon: Icon(Icons.contacts),),
        new Tab(icon: Icon(Icons.call),)
      ],
      controller: tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'msc',
      home: new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new PreferredSize(
            preferredSize: Size.fromHeight(25),
            child: new Container(
              color: Colors.white,
                child: Column(
                  children: <Widget>[
                    getTabBar()
//                    new TabBar(
//                      tabs: [new Text("Lunches",style: TextStyle(color: Colors.black),), new Text("Cart",style: TextStyle(color: Colors.black),)],
//                    ),
                  ],
                ),
            ),
    ),
          body: TabBarView(
            children: <Widget>[
              new Camera(),
              new Chat(),
              new Contact(),
              new Call()
            ],
            controller: tabController,
          ),
    ),
      ),
    );
  }
}

class Camera extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: new Text('Camera'),
      ),
    );
  }

}

class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: new Text('Chat'),
      ),
    );;
  }

}

class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: new Text('Contact'),
      ),
    );
  }

}

class Call extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: new Text('Call'),
      ),
    );
  }

}
