import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  // Sayfaların listesi
  List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bafirok'),
          backgroundColor: Colors.blue,
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.blue.shade100,
          selectedItemColor: Colors.blue.shade700,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

// HomeScreen, SearchScreen, AddScreen, NotificationScreen, ProfileScreen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 100, color: Colors.blue),
          SizedBox(height: 20),
          Text('Home Screen', style: TextStyle(fontSize: 24, color: Colors.blue)),
        ],
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search, size: 100, color: Colors.blue),
          SizedBox(height: 20),
          Text('Search Screen', style: TextStyle(fontSize: 24, color: Colors.blue)),
        ],
      ),
    );
  }
}

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_circle, size: 100, color: Colors.blue),
          SizedBox(height: 20),
          Text('Add Screen', style: TextStyle(fontSize: 24, color: Colors.blue)),
        ],
      ),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.notifications, size: 100, color: Colors.blue),
          SizedBox(height: 20),
          Text('Notification Screen', style: TextStyle(fontSize: 24, color: Colors.blue)),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_circle, size: 100, color: Colors.blue),
          SizedBox(height: 20),
          Text('Profile Screen', style: TextStyle(fontSize: 24, color: Colors.blue)),
        ],
      ),
    );
  }
}
