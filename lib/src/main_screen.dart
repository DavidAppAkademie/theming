import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.person),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Card(
          child: Column(
            spacing: 32,
            children: [
              Slider(
                value: 0.8,
                onChanged: (newValue) {},
              ),
              Slider(
                value: 0.2,
                onChanged: (newValue) {},
              ),
              Switch(
                value: true,
                onChanged: (newValue) {},
              ),
              Switch(value: false, onChanged: (newValue) {}),
              ElevatedButton(onPressed: () {}, child: Text("Elevated")),
              FilledButton(onPressed: () {}, child: Text("Filled")),
              OutlinedButton(onPressed: () {}, child: Text("Outlined")),
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
    );
  }
}
