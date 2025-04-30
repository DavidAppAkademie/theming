import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:shimmer/shimmer.dart';
import 'package:theming/src/star_rating.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.person),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Card(
            child: Column(
              spacing: 32,
              children: [
                Text(
                  "Beispiel",
                  style: TextStyle(fontSize: 40, fontFamily: 'SFProDisplay'),
                ),
                Text(
                  "displayLarge",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  "displayMedium",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  "displaySmall",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  "headlineLarge",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  "headlineMedium",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  "headlineSmall",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  "titleLarge",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "titleMedium",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  "titleSmall",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  "labelLarge",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  "labelMedium",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  "labelSmall",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  "bodyLarge",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "bodyMedium",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "bodySmall",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Slider(value: 0.8, onChanged: (newValue) {}),
                Slider(value: 0.2, onChanged: (newValue) {}),
                Switch(value: true, onChanged: (newValue) {}),
                Switch(value: false, onChanged: (newValue) {}),
                ElevatedButton(onPressed: () {}, child: Text("Elevated")),
                FilledButton(onPressed: () {}, child: Text("Filled")),
                OutlinedButton(onPressed: () {}, child: Text("Outlined")),
                StarRating(
                  rating: -3,
                  starColor: Theme.of(context).colorScheme.primary,
                ),
                NumberPicker(
                  value: 40,
                  minValue: 0,
                  maxValue: 100,
                  onChanged: (value) {},
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey[400]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: 200.0,
                    height: 100.0,
                    color: Colors.grey,
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey[400]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: 200.0,
                    height: 20.0,
                    color: Colors.grey,
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey[400]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: 160.0,
                    height: 20.0,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                CircularProgressIndicator(),
                LinearProgressIndicator(),
                TextField(),
                FilledButton(onPressed: () {}, child: Text("Filled")),
                FilledButton(onPressed: () {}, child: Text("Filled")),
                FilledButton(onPressed: () {}, child: Text("Filled")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
