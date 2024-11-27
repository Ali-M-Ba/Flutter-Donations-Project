import 'package:flutter/material.dart';
import 'donation_form_page.dart';

class CardDonationPage extends StatelessWidget {
  final Map<String, String> donation;

  const CardDonationPage(this.donation, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Donation Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              donation['title'] ?? 'No Title',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text(donation['description'] ?? 'No Description'),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DonationFormPage(donation['title']),
                    ),
                  );
                },
                child: const Text('Donate Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
