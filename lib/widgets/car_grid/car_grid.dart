import 'package:ex_2/data/car_data.dart';
import 'package:ex_2/widgets/car/car.dart';
import 'package:flutter/material.dart';

class CarGrid extends StatelessWidget {
  const CarGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(20),
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: cars.map((car) {
        return CarCard(car: car);
      }).toList(),
    );
  }
}
