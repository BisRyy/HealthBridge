import 'package:code_light/commons/drawer.dart';
import 'package:code_light/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'chat_screen.dart';
import 'notification_detail_screen.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: CommonDrawer(),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.notification_important),
            title: const Text('Notification 1'),
            subtitle: const Text('This is the detail of notification 1.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationDetailScreen(
                    title: 'Notification 1',
                    detail: 'This is the detailed information for notification 1.',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.notification_important),
            title: const Text('Notification 2'),
            subtitle: const Text('This is the detail of notification 2.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationDetailScreen(
                    title: 'Notification 2',
                    detail: 'This is the detailed information for notification 2.',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.notification_important),
            title: const Text('Notification 3'),
            subtitle: const Text('This is the detail of notification 3.'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationDetailScreen(
                    title: 'Notification 3',
                    detail: 'This is the detailed information for notification 3.',
                  ),
                ),
              );
            },
          ),
          // Add more notifications here
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.chat),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                );
              },
            ),
            const SizedBox(width: 40), // The dummy child
            IconButton(
              icon: const Icon(Icons.notifications),
              color: Colors.green, // Highlight notifications icon
              onPressed: () {
                // Already on notifications screen
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle central action
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}
