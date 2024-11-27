import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../utils/global_data.dart';

class AddModifyCardPage extends StatelessWidget {
  final Map<String, String>? donation;
  final int? index;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  AddModifyCardPage({super.key, this.donation, this.index}) {
    if (donation != null) {
      titleController.text = donation!['title'] ?? '';
      descriptionController.text = donation!['description'] ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(donation == null ? 'Add Case' : 'Edit Case')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isEmpty ||
                    descriptionController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please fill all fields')),
                  );
                  return;
                }

                final newDonation = {
                  "id": const Uuid().v4(),
                  "title": titleController.text,
                  "description": descriptionController.text,
                };

                if (index != null) {
                  donations[index!] = newDonation;
                } else {
                  donations.add(newDonation);
                }

                Navigator.pop(context);
              },
              child: Text(donation == null ? 'Add Case' : 'Save Changes'),
            ),
          ],
        ),
      ),
    );
  }
}
