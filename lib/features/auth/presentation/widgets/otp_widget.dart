import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/utils/widgets/otp_text_form.dart';

class OtpWidget extends StatefulWidget {
  const OtpWidget({super.key});

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  late final TextEditingController controller1,controller2,controller3,controller4;
  @override
  void initState() {
    super.initState();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
    controller4 = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OtpTextForm(controller:controller1 ),
        OtpTextForm(controller:controller2 ),
        OtpTextForm(controller:controller3 ),
        OtpTextForm(controller:controller4 ),
      ],
    );
  }
}