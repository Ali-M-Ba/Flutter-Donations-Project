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
          return Card(
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
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddModifyCardPage(
                            donation: donation,
                            index: index,
                          ),
                        ),
                      ).then((_) => setState(() {}));
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        donations.removeAt(index);
                      });
                    },
                  ),
                ],
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
