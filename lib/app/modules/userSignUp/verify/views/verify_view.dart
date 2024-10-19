import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../resources/widgets/userSignUp/input_pin.dart';
import '../controllers/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  const VerifyView({super.key});

  void _handleOtpSubmission(String otp) {
    // Handle OTP submission here
    print('Entered OTP: $otp');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter the 6-digit code sent to your email:',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            OtpInputField(
              otpLength: 6,               // Define the length of the OTP
              onOtpEntered: _handleOtpSubmission,  // Callback when OTP is entered
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // You can also trigger verification here if needed
              },
              child: const Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}