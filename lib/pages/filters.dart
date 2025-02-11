import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.star,
                color: Colors.black87,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Gener")
          ],
        ),
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.language,
                color: Colors.black87,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Language")
          ],
        ),
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.important_devices_outlined,
                color: Colors.black87,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Top IMDB")
          ],
        ),
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.screenshot_monitor_outlined,
                color: Colors.black87,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Watched")
          ],
        ),
      ],
    );
  }
}
