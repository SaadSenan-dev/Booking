import 'package:ex_2/data/car_data.dart';
import 'package:ex_2/widgets/car/car.dart';
import 'package:flutter/material.dart';

class CarGrid extends StatefulWidget {
  const CarGrid({super.key});

  @override
  State<CarGrid> createState() => _CarGridState();
}

class _CarGridState extends State<CarGrid> {
  bool showAll = false;

  @override
  Widget build(BuildContext context) {
    final int maxItems = 4;

    final itemsToShow = showAll
        ? cars.length
        : (cars.length > maxItems ? maxItems : cars.length);

    return Column(
      children: [
        GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            showAll ? cars.length : 4,
            (index) => CarCard(car: cars[index]),
          ),
        ),
        const SizedBox(height: 20),
        if (!showAll)
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  showAll = true;
                });
              },
              icon: const Icon(
                Icons.expand_more,
                color: Colors.white,
              ),
              label: const Text("See more"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
