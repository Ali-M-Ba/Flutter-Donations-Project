import 'dart:io';

File? loggedInUserImage;
String? loggedInUserName;
String? loggedInUserEmail;
String? loggedInUserPassword;

List<Map<String, String>> donations = [
  {
    "id": "1",
    "title": "School Supplies",
    "description":
        "Help orphans get school supplies to continue their education."
  },
  {
    "id": "2",
    "title": "Medical Aid",
    "description":
        "Provide medical care and necessary treatments for orphaned children."
  },
  {
    "id": "3",
    "title": "Food for Orphans",
    "description":
        "Provide nutritious meals for orphans who have no access to regular food."
  },
  {
    "id": "3",
    "title": "Clean Water Access",
    "description":
        "Provide clean and safe drinking water for orphanages in need."
  },
];

Map<String, String> donationDetails = {"amount": "", "message": ""};
