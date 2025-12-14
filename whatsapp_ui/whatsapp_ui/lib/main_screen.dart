import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('WhatsApp', style: TextStyle(color: Colors.white)),
          bottom: TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt, color: Colors.white)),
              Tab(
                child: Text('Chats', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('Status', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('Call', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 11),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text('New Group')),
                PopupMenuItem(value: 2, child: Text('Settings')),
                PopupMenuItem(value: 1, child: Text('Logout')),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Text('camera'),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1542085/pexels-photo-1542085.jpeg?auto=compress&cs=tinysrgb&w=600",
                  ),
                ),
                title: Text('Saad Ullah'),
                subtitle: Text('Where is my dog?'),
                trailing: Text('6:30 PM'),
              ),
            ),
            Text('Status'),
            Text('Call'),
          ],
        ),
      ),
    );
  }
}
