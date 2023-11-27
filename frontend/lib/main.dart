import 'package:flutter/material.dart';
import 'views/journal_entry/journal_entry.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chronicare',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(title: 'Chronicare Main Page'),
    );
  }
}

// MainPage is a simple StatelessWidget with a button to navigate to the Journal Entry screen.
class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => JournalEntryScreen()),
            );
          },
          child: const Text('Journal Entry'),
        ),
      ),
    );
  }
}
