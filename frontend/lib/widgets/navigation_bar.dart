import 'package:flutter/material.dart';

class ChronicareNavigationBar extends StatefulWidget {
  @override
  _ChronicareNavigationBarState createState() => _ChronicareNavigationBarState();
}

class _ChronicareNavigationBarState extends State<ChronicareNavigationBar> {
  int _selectedIndex = -1; // Start with no item selected

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex >= 0 ? _selectedIndex : 0,
      selectedItemColor: Colors.black, // Set selected item color to black
      unselectedItemColor: Colors.black, // Set unselected item color to black
      onTap: _onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.card_membership),
          label: 'Membership',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_pharmacy),
          label: 'Supplements',
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      if (_selectedIndex != index) _selectedIndex = index;
      else _selectedIndex = -1; // Allow deselecting
    });

    // Handle the item tap only if an item is actually selected
    if (_selectedIndex >= 0) {
      switch (index) {
        case 0:
          // TODO: Implement Membership action or API call
          break;
        case 1:
          // TODO: Implement History action or API call
          break;
        case 2:
          // TODO: Implement Home action or navigation
          break;
        case 3:
          // TODO: Implement Cart action or API call
          break;
        case 4:
          // TODO: Implement Supplements action or API call
          break;
        default:
          print("Invalid item");
      }
    }
  }
}
