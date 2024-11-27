# Orphans Donations App

The **Orphans Donations App** is a Flutter application designed to facilitate contributions toward various donation causes. It allows users to sign up, log in, browse donation opportunities, and contribute directly while tracking their own profile data.

---

## Contributors

1. Ashjan AL-Ajeeli 
2. Abdulla Dohai  
3. Ali Bahakim 
4. Omer Ben-Shekhan
5. Salem Balleath
6. Sultan Al-Yamini

---

## Features
- **User Authentication:**
  - Sign-up with a profile picture (from gallery or camera).
  - Log in with email and password.

- **Donations Management:**
  - Browse a list of predefined donation causes.
  - Add, edit, or delete donation cases (available for admins or users with permissions).

- **Personalized Experience:**
  - Update user profile with a custom image.

- **Donation Submission:**
  - Make donations by entering an amount and optional message.

---

## Folder Structure

```
lib/
├── main.dart                    # Entry point of the app
├── pages/                       # Contains all the app pages
│   ├── sign_up_page.dart        # Sign-up page
│   ├── login_page.dart          # Login page
│   ├── home_page.dart           # Home screen with a list of donations
│   ├── add_modify_case_page.dart# Add/Edit donation cases
│   ├── card_donation_page.dart  # Detailed donation card view
│   ├── donation_form_page.dart  # Form to submit donations
├── widgets/                     # Reusable components
│   └── drawer_widget.dart       # Navigation drawer widget
├── utils/                       # Utility files
│   └── global_data.dart         # Contains global variables like user and donation data
```

---

## Installation & Setup

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Ali-M-Ba/Flutter-Donations-Project.git
   cd donations-app
   ```

2. **Install Dependencies:**
   Ensure you have Flutter installed. Run the following command to install dependencies:
   ```bash
   flutter pub get
   ```

3. **Run the App:**
   Launch the app on an emulator or connected device:
   ```bash
   flutter run
   ```

---

## Usage Guide

### 1. Sign Up
- Create an account by entering your name, email, and password.
- Upload a profile picture from your gallery or capture a new one using your camera.

### 2. Log In
- Log in using the credentials you created.

### 3. Explore Donations
- Browse donation cases on the home page.
- Tap on a donation to view details.

### 4. Manage Donations
- Use the **add button** to create a new donation case.
- Edit or delete cases using the action icons on the home page.

### 5. Donate
- Open a donation case and submit your donation amount along with an optional message.

---

## Dependencies

- [Flutter](https://flutter.dev) (v2.5 or higher)
- `image_picker`: For selecting images from the gallery or camera.
- `uuid`: For IDs generator.
- `material`: For the app's user interface components.