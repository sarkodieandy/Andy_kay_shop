import 'package:flutter/material.dart';

<<<<<<< HEAD
const kPrimaryColor = Color(0xFF4B5320); // Army green
const kPrimaryLightColor = Color(0xFF8A9A5B); // Lighter army green
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF4B5320), Color(0xFF8A9A5B)],
);
const kSecondaryColor = Color(0xFF6F4E37); // Brown
const kTextColor = Color(0xFF2E2E2E); // Dark neutral for readability
=======
const kPrimaryColor = Color(0xFF162e14); // Updated to #162e14
const kPrimaryLightColor = Color(0xFF2a4931); // A lighter shade for light color
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF224226), Color(0xFF162e14)], // Updated gradient colors
);
const kSecondaryColor = Color(0xFF979797); // Kept unchanged
const kTextColor = Colors.black;

>>>>>>> d2b3531012abb7a2b5fb725c84112ea3e1044385
const kAnimationDuration = Duration(milliseconds: 200);

const headingStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: kTextColor,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 16),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: kTextColor),
  );
}
