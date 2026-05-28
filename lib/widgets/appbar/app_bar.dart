import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.blue[900],
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.mark_email_unread_outlined),
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
          onPressed: () {},
          icon: Icon(Icons.notifications_none_rounded),
          iconSize: 30,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
