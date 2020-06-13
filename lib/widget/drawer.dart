import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child:ListView(
            padding: const EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Sashita Ghimire"), 
                accountEmail:Text("sashita@gmail.com"),
                currentAccountPicture:CircleAvatar(
                  backgroundImage:NetworkImage(
                    "https://images.unsplash.com/photo-1510520434124-5bc7e642b61d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
                ),
               ),
                ListTile(
                  leading:Icon(Icons.person),
                  title:Text("Sashita Ghimire"),
                  subtitle:Text("Developer"),
                  trailing:Icon(Icons.person),
                  onTap: (){},
                ),
                ListTile(
                  leading:Icon(Icons.email),
                  title:Text("Email"),
                  subtitle:Text("sashita@gmail.com"),
                  trailing:Icon(Icons.edit),
                  onTap: (){},
                )
            ],
          ),
    );
           
  }
}