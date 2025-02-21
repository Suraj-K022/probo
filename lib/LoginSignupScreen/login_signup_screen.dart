import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:probo/BottomNavBar/bottom_nav_bar.dart';
import 'package:probo/CustomWidget/custom_buttons.dart';
import 'package:probo/CustomWidget/custom_text_field.dart';
import 'package:probo/CustomWidget/customtext.dart';
import 'package:probo/Home/home_screen.dart';
import 'package:probo/utils/images.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  int view = 0;
  bool _isObscured = true;
  bool _isObscured1 = true;
  final TextEditingController dateController = TextEditingController();


  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  void _selectDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
      setState(() {
        dateController.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(Images.bgimage),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Get.theme.scaffoldBackgroundColor),
                    child: view == 0
                    //login//
                        ? ListView(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            children: [
                              Rubik(
                                text: 'Login',
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Rubik(
                                text: 'Phone Number or Email',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomTextField(
                                hintText: 'Enter Phone Number',
                                maxLength: 10,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Rubik(
                                text: 'Password',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Get.theme.secondaryHeaderColor,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomTextField(
                                hintText: '**********',
                                obscureText: _isObscured == true ? true : false,
                                suffixIcon: _isObscured == true
                                    ? Icons.visibility_off_sharp
                                    : Icons.visibility,
                                onSuffixTap: () {
                                  setState(() {
                                    _isObscured = !_isObscured;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              InkWell(onTap: (){setState(() {
                                view=3;
                              });},
                                  child: Poppins(
                                text: 'Forgot Password',
                                color: Get.theme.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.right,
                              )),
                              SizedBox(
                                height: 32,
                              ),
                              CustomButton(
                                  child: Rubik(
                                    text: 'Login',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Get.theme.scaffoldBackgroundColor,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      Get.off(BottomNavBar(index: 0));
                                    });
                                  }),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Poppins(
                                    text: 'Don’t have an account?',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          view = 1;
                                        });
                                      },
                                      child: Poppins(
                                        text: ' Sign Up',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                            ],
                          )
                        : view == 1
                    //Signup//
                            ? ListView(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 30),
                                children: [
                                  Rubik(
                                    text: 'Create Account',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Rubik(
                                    text: 'Name',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(hintText: 'Enter Name'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Rubik(
                                    text: 'Email Id',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(hintText: 'Enter Email Id'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Rubik(
                                    text: 'Select Age',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    hintText: 'dd/mm/yyyy',
                                    suffixIcon: Icons.date_range_rounded,
                                    onSuffixTap: _selectDate,
                                    controller: dateController,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Rubik(
                                    text: 'Password',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    hintText: '**********',
                                    suffixIcon: _isObscured==true?Icons.visibility_off_sharp:Icons.visibility,
                                    obscureText: _isObscured==true?true:false,
    onSuffixTap: () {
    setState(() {
    _isObscured = !_isObscured;
    });}
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Rubik(
                                    text: 'Confirm Password',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Get.theme.secondaryHeaderColor,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    hintText: '**********',
                                    suffixIcon: _isObscured1==true?Icons.visibility_off_sharp:Icons.visibility,
                                    obscureText: _isObscured1==true?true:false,
                                      onSuffixTap: () {
                                        setState(() {
                                          _isObscured1 = !_isObscured1;
                                        });}
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  CustomButton(
                                      child: Rubik(
                                        text: 'Sign Up',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Get.theme.scaffoldBackgroundColor,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          view = 2;
                                        });
                                      }),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Poppins(
                                        text: 'Don’t have an account?',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Get.theme.secondaryHeaderColor,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              view = 0;
                                            });
                                          },
                                          child: Poppins(
                                            text: ' Login',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          )),
                                    ],
                                  ),
                                ],
                              )
                            : view == 2
                    //Otp Screen//
                                ? ListView(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 30),
                                    children: [
                                      Rubik(
                                        text: 'Verify Phone Number',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 24,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Rubik(
                                        text: 'OTP has been send to 7474587458',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Get.theme.secondaryHeaderColor,
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),

                                      OTPTextField(
                                          otpFieldStyle: OtpFieldStyle(
                                            focusBorderColor:
                                                Get.theme.primaryColor,
                                            borderColor:
                                                Get.theme.secondaryHeaderColor,
                                            enabledBorderColor:
                                                Get.theme.secondaryHeaderColor,
                                          ),
                                          // controller: otpController,
                                          length: 5,
                                          textFieldAlignment:
                                              MainAxisAlignment.spaceAround,
                                          fieldWidth: 48,
                                          fieldStyle: FieldStyle.box,
                                          outlineBorderRadius: 15,
                                          style: GoogleFonts.rubik(
                                              fontSize: 24,
                                              color: Get.theme.primaryColor),
                                          onChanged: (pin) {
                                            print("Changed: " + pin);
                                          },
                                          onCompleted: (pin) {
                                            print("Completed: " + pin);
                                          }),

                                      SizedBox(
                                        height: 16,
                                      ),

                                      Rubik(
                                        text: 'Resend OTP',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Get.theme.primaryColor,
                                        textAlign: TextAlign.right,
                                      ),

                                      SizedBox(
                                        height: 32,
                                      ),
                                      // Expanded(flex: 2,child: SizedBox()),
                                      CustomButton(
                                          child: Rubik(
                                            text: 'Submit OTP',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Get
                                                .theme.scaffoldBackgroundColor,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              Get.off(BottomNavBar(index: 0));
                                            });
                                          })
                                    ],
                                  )
                                : view==3
                    //Forgot Password Screen
                        ? ListView(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      children: [
                        Rubik(
                          text: 'Forgot Password',
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.black,
                        ),
SizedBox(height: 20,),
                        Rubik(
                          text: 'Provide Your Phone number and we will send you a Passcode to Reset your Password ',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          maxLines: 2,
                          color: Get.theme.hintColor,
                        ),


                        SizedBox(
                          height: 40,
                        ),


                        Rubik(
                          text: 'Phone Number or Email',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Get.theme.secondaryHeaderColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          hintText: 'Enter Phone Number Or Email',
                          maxLength: 10,
                        ),


                        SizedBox(
                          height: 32,
                        ),
                        CustomButton(
                            child: Rubik(
                              text: 'Verify',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Get.theme.scaffoldBackgroundColor,
                            ),
                            onPressed: () {
                              setState(() {
                              setState(() {
                                view=2;
                              });;
                              });
                            }),
                        // SizedBox(
                        //   height: 40,
                        // ),
                      ],





                    )
                        :SizedBox(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
