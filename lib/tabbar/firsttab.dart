import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          ListTile(title: Text('Umar Calcullatawala'),subtitle: Text('BCA Computer Enginner'),leading: CircleAvatar(backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),), trailing: Icon(Icons.delete),),
          Divider(height: 2.0,),
          ListTile(title: Text('Arbaz Shaikh'),subtitle: Text('BCA Computer Enginner'),leading: CircleAvatar(backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),), trailing: Icon(Icons.delete),),
          Divider(height: 2.0,),
          ListTile(title: Text('Suraj Bhavsar'),subtitle: Text('B.E. Computer Enginner'),leading: CircleAvatar(backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),),  trailing: Icon(Icons.delete),),
          Divider(height: 2.0,),
          ListTile(title: Text('Anil Thummar'),subtitle: Text('MCA Computer Enginner'),leading: CircleAvatar(backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),),  trailing: Icon(Icons.delete),),
          Divider(height: 2.0,),
          ListTile(title: Text('Purvrajsinh Gohil'),subtitle: Text('BCA Computer Enginner'),leading: CircleAvatar(backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),), trailing: Icon(Icons.delete),),
          Divider(height: 2.0,),
          ListTile(title: Text('Bhoomika Harkhani'),subtitle: Text('B.E. Computer Enginner'),leading: CircleAvatar(backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),), trailing: Icon(Icons.delete),),
          Divider(height: 2.0,),
          ListTile(title: Text('Avani Patel'),subtitle: Text('B.E. Computer Enginner'),leading: CircleAvatar(backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),), trailing: Icon(Icons.delete),
          onTap: () =>{
          Scaffold.of(context).showSnackBar(
              new SnackBar(
                  content: Text('Delete this record'),
                duration: Duration(seconds: 2),
//                action: new SnackBarAction(label: "UNDO", onPressed: null),
//                action: SnackBarAction(label: "UNDO", onPressed: null),
              ))
          },
          ),
          Divider(height: 2.0,),
          ListTile(title: Text('Dharati Patel'),subtitle: Text('B.E. Computer Enginner'),leading: CircleAvatar(backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),), trailing: Icon(Icons.delete),),
          Divider(height: 2.0,),
          ListTile(title: Text('Pooja Patel'),subtitle: Text('B.E. Computer Enginner'),leading: CircleAvatar(backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),), trailing: Icon(Icons.delete),),
          Divider(height: 2.0,),
          ListTile(title: Text('Arzoo Dadhaniya'),subtitle: Text('B.E. Computer Enginner'),leading: CircleAvatar(backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),), trailing: Icon(Icons.delete),),
          Divider(height: 2.0,),
          ListTile(title: Text('Vidhi vekariya'),subtitle: Text('B.E. Computer Enginner'),leading: CircleAvatar(backgroundImage: new NetworkImage('https://images.unsplash.com/photo-1533048324814-79b0a31982f1?ixlib=rb-1.2.1&w=1000&q=80'),), trailing: Icon(Icons.delete),),

        ],
      ),
    );
  }
}
