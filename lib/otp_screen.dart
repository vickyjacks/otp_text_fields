import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatefulWidget {

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15, top: 10, right: 10),
          child: Ink(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Colors.white30,
                    width: 1,
                  )),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Color.fromRGBO(233, 64, 87, 1),
              iconSize: 15,
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SizedBox(
            height: MediaQuery.of(context).size.height - 100,
            width: MediaQuery.of(context).size.width,
            child:   SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      "00:42",
                      style: GoogleFonts.outfit(
                          fontSize: 34,
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w700,
                          )),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Type the verification code\n we`ve send you",
                      style: GoogleFonts.outfit(
                          fontSize: 18,
                          textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.699999988079071),
                            fontSize: 18,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w400,
                          )),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 38,
                    ),
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: PinCodeTextField(
                              cursorColor: Colors.black,
                              backgroundColor: Colors.transparent,
                              appContext: context,
                              length: 4,
                              animationType: AnimationType.fade,
                              blinkWhenObscuring: true,
                              pastedTextStyle: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                              pinTheme: PinTheme(
                                activeColor: Color(0xFFE94057),
                                inactiveColor: Color(0xFFffffff),
                                inactiveFillColor: Colors.black,
                                selectedFillColor: Colors.black,
                                activeFillColor: Color(0xFFE94057),
                                disabledColor: Color(0xFFE94057),
                                selectedColor: Color(0xFFE94057),
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(8),
                                fieldHeight: 60,
                                fieldWidth: 60,
                              ),
                              animationDuration:
                              const Duration(milliseconds: 300),
                              //       controller: controller.otpController,
                              onChanged: (otp) {},
                              keyboardType: TextInputType.number,
                              enableActiveFill: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Send again",
                      style: GoogleFonts.outfit(
                          textStyle: TextStyle(
                            color: Color(0xFFE94057),
                            fontSize: 16,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w700,
                          )),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                Container(
                  height: 65.0,
                  width: 65,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(161, 55, 139, 1),
                        Color.fromRGBO(218, 74, 64, 1),
                        Color.fromRGBO(229, 67, 97, 1),
                      ]),
                      borderRadius: BorderRadius.circular(40)),
                  child: ElevatedButton(
                      onPressed: (){

                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: Icon(Icons.arrow_forward_ios)),
                )
                  ],
                ),
              ),
            )

        ),
      ),
    );
  }
}