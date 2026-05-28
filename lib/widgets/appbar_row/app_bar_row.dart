import 'package:flutter/material.dart';

class AppBarRow extends StatelessWidget {
  const AppBarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[900],
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(22, 22, 22, 1),
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home_outlined, color: Colors.white, size: 20),
                    SizedBox(width: 6),
                    Text(
                      "Stays",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(22, 22, 22, 1),
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.airplanemode_active_outlined,
                        color: Colors.white, size: 20),
                    SizedBox(width: 6),
                    Text(
                      "Flights",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(22, 22, 22, 1),
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.car_rental, color: Colors.white, size: 20),
                    SizedBox(width: 6),
                    Text(
                      "Car",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(22, 22, 22, 1),
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.local_taxi_outlined,
                        color: Colors.white, size: 20),
                    SizedBox(width: 6),
                    Text(
                      "Taxi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(22, 22, 22, 1),
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.track_changes, color: Colors.white, size: 20),
                    SizedBox(width: 6),
                    Text(
                      "Track",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
