import 'package:flutter/material.dart';

class ThirdTab extends StatefulWidget {
  @override
  _ThirdTabState createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {

  List<String> list = [];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _selectItems;

  void changeDropDownItem(String selectedVehicle) {
    setState(() {
      _selectItems = selectedVehicle;
      print("You Selected Items: $_selectItems");

    });
  }


  @override
  void initState() {
    _dropDownMenuItems = buildAndGetDropDownMenuItems(list);
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List vehicle) {
    List<DropdownMenuItem<String>> itemlist = new List();

    itemlist.add(
        new DropdownMenuItem(value: "Camera", child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[new Icon(Icons.camera),SizedBox(width: 10),new Text("Camera")])));

    itemlist.add(
        new DropdownMenuItem(value: "Call", child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[new Icon(Icons.call),SizedBox(width: 10,),new Text("Call")])));

    itemlist.add(
        new DropdownMenuItem(value: "Chat", child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[new Icon(Icons.chat),SizedBox(width: 10,),new Text("Chat")])));

    itemlist.add(
        new DropdownMenuItem(value: "Contact", child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[new Icon(Icons.contacts),SizedBox(width: 10),new Text("Contact")])));

    return itemlist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Please choose a Item Type: ',style: TextStyle(fontSize: 17,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
              new DropdownButton(
                value: _selectItems,
                items: _dropDownMenuItems,
                hint: new Text("---Select Items---",style: TextStyle(fontSize: 16,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),),
                onChanged: changeDropDownItem,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
