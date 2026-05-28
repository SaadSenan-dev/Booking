import 'package:ex_2/widgets/appbar/app_bar.dart';
import 'package:ex_2/widgets/appbar_row/app_bar_row.dart';
import 'package:ex_2/widgets/car/car_grid.dart';
import 'package:ex_2/widgets/navbar/nav_bar.dart';
import 'package:ex_2/widgets/search_box/search_box.dart';
import 'package:ex_2/widgets/sidebar/side_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: NavBar(),
      key: scaffoldKey,
      drawer: CustomSideBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarRow(),
            SearchBox(),
            const SizedBox(height: 20),
            CarGrid(),
          ],
        ),
      ),
    );
  }
}
