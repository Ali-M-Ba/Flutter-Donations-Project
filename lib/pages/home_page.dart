import 'package:flutter/material.dart';
import '../widgets/drawer_widget.dart';
import 'add_modify_case_page.dart';
import 'card_donation_page.dart';
import '../utils/global_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: const DrawerWidget(),
      body: ListView.builder(
        itemCount: donations.length,
        itemBuilder: (context, index) {
          final donation = donations[index];
          return Dismissible(
            key: ValueKey(donation['id']),
            background: Container(
              color: Colors.green,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(Icons.edit, color: Colors.white),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            confirmDismiss: (direction) async {
              if (direction == DismissDirection.startToEnd) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddModifyCardPage(
                      donation: donation,
                      index: index,
                    ),
                  ),
                ).then((_) => setState(() {}));
                return false;
              } else if (direction == DismissDirection.endToStart) {
                final shouldDelete = await showDialog<bool>(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Confirm Delete'),
                      content: const Text(
                          'Are you sure you want to delete this item?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: const Text('Delete'),
                        ),
                      ],
                    );
                  },
                );
                return shouldDelete ?? false;
              }
              return false;
            },
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart) {
                setState(() {
                  donations.removeAt(index);
                });
              }
            },
            child: Card(
              child: ListTile(
                title: Text(donation['title'] ?? 'No Title'),
                subtitle: Text(donation['description'] ?? 'No Description'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardDonationPage(donation),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddModifyCardPage()),
          ).then((_) => setState(() {}));
        },
      ),
    );
  }
}
