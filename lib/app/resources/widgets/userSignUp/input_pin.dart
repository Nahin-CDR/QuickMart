import 'package:flutter/material.dart';
import 'package:quick_mart/app/resources/styles/color_manager.dart';

class OtpInputField extends StatefulWidget {
  final int otpLength;
  final ValueChanged<String> onOtpEntered;
  const OtpInputField({super.key, required this.otpLength, required this.onOtpEntered});
  @override
  State<StatefulWidget> createState() {
    return _OtpInputFieldState();
  }
}

class _OtpInputFieldState extends State<OtpInputField> {
  late List<TextEditingController> _otpControllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _otpControllers = List<TextEditingController>.generate(widget.otpLength, (index) => TextEditingController());
    _focusNodes = List<FocusNode>.generate(widget.otpLength, (index) => FocusNode());
  }

  @override
  void dispose() {
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onOtpChanged() {
    String otp = _otpControllers.map((controller) => controller.text).join();
    if (otp.length == widget.otpLength) {
      widget.onOtpEntered(otp);  // Return OTP through the callback
    }
  }

  Widget _buildOtpField(int index) {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: _otpControllers[index],
        focusNode: _focusNodes[index],
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: '',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.cyanDeep, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.greyDFE0E6, width: 2),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && index < widget.otpLength - 1) {
            _focusNodes[index + 1].requestFocus();  // Move to next field
          } else if (value.isEmpty && index > 0) {
            _focusNodes[index - 1].requestFocus();  // Move to previous field
          }
          _onOtpChanged();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(widget.otpLength, (index) => _buildOtpField(index)),
    );
  }
}
