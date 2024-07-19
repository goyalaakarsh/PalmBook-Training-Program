import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contact List'),
        ),
        body: ContactList(),
      ),
    );
  }
}

class ContactList extends StatelessWidget {
  final List<Map<String, String>> attendees = [
    {'name': 'Aakarsh Goyal', 'phone': '+91 99999 99999', 'status': 'Present'},
    {'name': 'Shreya Khandelwal', 'phone': '+91 99999 99999', 'status': 'Absent'},
    {'name': 'Vanshita Mehta', 'phone': '+91 99999 99999', 'status': 'Present'},
    {'name': 'Sejal Gupta', 'phone': '+91 99999 99999', 'status': 'Present'},
    {'name': 'Akshita Jain', 'phone': '+91 99999 99999', 'status': 'Absent'},
    {'name': 'Lakshay Singhal', 'phone': '+91 99999 99999', 'status': 'Present'},
    {'name': 'Shruti Keshri', 'phone': '+91 99999 99999', 'status': 'Absent'},
    {'name': 'Sachin Singh', 'phone': '+91 99999 99999', 'status': 'Present'},
    {'name': 'Radhika Goel', 'phone': '+91 99999 99999', 'status': 'On Leave'},
    {'name': 'Drishti', 'phone': '+91 99999 99999', 'status': 'Present'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: attendees.length,
      itemBuilder: (context, index) {
        final attendee = attendees[index];

        return Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                child: Text(attendee['name']!.substring(0, 2)),
              ),
              title: Text(attendee['name']!),
              subtitle: Text(attendee['phone']!),
              trailing: Text(
                attendee['status']!,
                style: TextStyle(
                  color: attendee['status'] == 'Present'
                      ? Colors.green
                      : attendee['status'] == 'Absent'
                          ? Colors.red
                          : Colors.purple,
                ),
              ),
            ),
            Divider(), // Divider after each ListTile
          ],
        );
      },
    );
  }
}