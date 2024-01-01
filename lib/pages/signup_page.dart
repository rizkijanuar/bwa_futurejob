import 'package:bwa_futurejob/pages/signin_page.dart';
import 'package:bwa_futurejob/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isImageUpload = false;

  bool isEmailValid = true;
  TextEditingController emailController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    // WIDGET UNTUK IMAGE
    Widget uploadedImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isImageUpload = !isImageUpload;
            });
          },
          child: Column(
            children: [
              Image.asset(
                "assets/images/user_pic.png",
                width: 120,
                height: 120,
              ),
            ],
          ),
        ),
      );
    }

    // WIDGET UNTUK SHOWED IMAGE
    Widget showedImages() {
      return Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isImageUpload = !isImageUpload;
            });
          },
          child: Column(
            children: [
              Image.asset(
                "assets/images/my_pic.png",
                width: 120,
                height: 120,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.0,
              left: 24.0,
              right: 24.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up Page",
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Begin New Journey",
                  style: subTitleTextStyle,
                ),
                SizedBox(
                  height: 50,
                ),
                isImageUpload ? showedImages() : uploadedImages(),
                SizedBox(
                  height: 50,
                ),

                // FULL NAME
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fullname",
                      style: titleTextStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xff4141A4)),
                        ),
                      ),
                    ),
                  ],
                ),
                // END FULL NAME

                // EMAIL
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address",
                      style: titleTextStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: emailController,
                      onChanged: (value) {
                        bool isValid = EmailValidator.validate(value);
                        print(value);

                        print(isValid);

                        if (isValid) {
                          setState(() {
                            isEmailValid = true;
                          });
                        } else {
                          setState(() {
                            isEmailValid = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: isEmailValid
                                ? Color(0xff4141A4)
                                : Color(0xffFD4F56),
                          ),
                        ),
                        hintText: "",
                      ),
                      style: TextStyle(
                        color: isEmailValid
                            ? Color(0xff4141A4)
                            : Color(0xffFD4F56),
                      ),
                    ),
                  ],
                ),
                // END EMAIL

                // PASSWORD
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: titleTextStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xff4141A4)),
                        ),
                      ),
                    ),
                  ],
                ),
                // END PASSWORD

                // YOUR GOAL
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Goal",
                      style: titleTextStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffF1F0F5),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xff4141A4)),
                        ),
                      ),
                    ),
                  ],
                ),
                // END YOUR GOAL

                // BUTTON SIGN UP
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 400,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff4141A4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: buttonTextStyle,
                    ),
                  ),
                ),
                // END BUTTON SIGN UP

                // TEXT BACK TO SIGN IN
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInPage(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Back to Sign In",
                        style: GoogleFonts.poppins(
                          color: Color(0xffB3B5C4),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
                // END TEXT BACK TO SIGN IN
              ],
            ),
          ),
        ),
      ),
    );
  }
}
