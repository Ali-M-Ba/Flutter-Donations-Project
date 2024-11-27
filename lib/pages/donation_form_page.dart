import 'package:flutter/material.dart';
import '../utils/global_data.dart';

class DonationFormPage extends StatelessWidget {
  final String? donationTitle;

  final TextEditingController amountController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  DonationFormPage(this.donationTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Donate to $donationTitle')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Donation Amount'),
            ),
            TextField(
              controller: messageController,
              decoration:
                  const InputDecoration(labelText: 'Message (Optional)'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                donationDetails['amount'] = amountController.text;
                donationDetails['message'] = messageController.text;

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Thank you for your donation!')),
                );

                Navigator.pop(context);
              },
              child: const Text('Submit Donation'),
            ),
          ],
        ),
      ),
    );
  }
}
