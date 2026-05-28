import 'package:flutter/material.dart';

class CustomSideBar extends StatelessWidget {
  const CustomSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.person),
          )),
          ListTile(
            leading: Icon(Icons.sailing_sharp),
            title: Text("Saad"),
            onTap: () {},
          ),
          ExpansionTile(
            title: Text("saad"),
            children: [
              ListTile(
                title: Text("Saad"),
                leading: Icon(Icons.ac_unit_sharp),
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
