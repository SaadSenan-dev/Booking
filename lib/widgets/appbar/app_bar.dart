import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.blue[900],
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
        icon: Icon(Icons.menu),
        iconSize: 30,
      ),
      centerTitle: true,
      title: Text(
        "Booking.com",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.mode_comment_outlined),
          iconSize: 30,
        ),
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Notifications"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      ListTile(
                        leading: Icon(Icons.notifications),
                        title: Text("New car added"),
                      ),
                      ListTile(
                        leading: Icon(Icons.notifications),
                        title: Text("Discount available"),
                      ),
                      ListTile(
                        leading: Icon(Icons.notifications),
                        title: Text("Booking confirmed"),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Close"),
                    ),
                  ],
                );
              },
            );
          },
          icon: const Icon(Icons.notifications_none_rounded),
          iconSize: 30,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
