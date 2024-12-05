import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../constants.dart';
import 'components/otp_form.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  const OtpScreen({super.key});

  // Function to generate a random OTP
  String generateOtp() {
    final random = Random();
    return (1000 + random.nextInt(9000)).toString(); // Generates a 4-digit OTP
  }

  Future<void> resendOtp() async {
    try {
      // Generate a new OTP
      String newOtp = generateOtp();

      // Replace with your Firestore collection and document details
      CollectionReference otpCollection =
          FirebaseFirestore.instance.collection('otps');

      // Update OTP in Firestore
      await otpCollection.doc('otpDocumentId').set({'otp': newOtp});

      // Display a message
      print("OTP Resent: $newOtp");
    } catch (e) {
      print("Error resending OTP: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  "OTP Verification",
                  style: headingStyle,
                ),
                const Text("We sent your code to +1 898 860 ***"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("This code will expire in "),
                    TweenAnimationBuilder(
                      tween: Tween(begin: 30.0, end: 0.0),
                      duration: const Duration(seconds: 30),
                      builder: (_, dynamic value, child) => Text(
                        "00:${value.toInt()}",
                        style: const TextStyle(color: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
                const OtpForm(),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    await resendOtp();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("OTP Code Resent")),
                    );
                  },
                  child: const Text(
                    "Resend OTP Code",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
