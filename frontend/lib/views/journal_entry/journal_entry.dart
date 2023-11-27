import 'package:flutter/material.dart';
import '../../widgets/navigation_bar.dart'; 
import '../notification_bell/notification_bell.dart'; 
import '../profile/profile.dart'; 

class JournalEntryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Journal Entry'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationBellScreen()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Journal Entry Screen Content'),
      ),
      bottomNavigationBar: ChronicareNavigationBar(), 
    );
  }
}
