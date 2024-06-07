import 'package:flutter/material.dart';
import 'package:login_signup_ui/component/custom_button.dart';
import 'package:login_signup_ui/component/custom_textfield.dart';
import 'package:login_signup_ui/component/social_button.dart';
import 'package:login_signup_ui/pages/SignupScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.1,
            vertical: screenHeight * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/welcome.jpg', height: screenHeight * 0.25),
              SizedBox(height: screenHeight * 0.005),
              Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              Text(
                'Log in to your existing account of Q Allure',
                style: TextStyle(fontSize: screenWidth * 0.04),
              ),
              SizedBox(height: screenHeight * 0.04),
              CustomTextField(
                hintText: 'Email',
                icon: Icons.person,
                defaultText: 'Johnwilliasm@gmail.com',
              ),
              CustomTextField(
                hintText: 'Password',
                icon: Icons.lock,
                obscureText: true,
                defaultText: '',
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontSize: screenWidth * 0.035, color: Colors.black),
                  ),
                ),
              ),
              CustomButton(
                text: 'LOG IN',
                onPressed: () {
                  // Handle login
                },
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                'or continue using',
                style: TextStyle(fontSize: screenWidth * 0.035),
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(
                    icon: Icons.facebook,
                    label: 'Facebook',
                    onPressed: () {
                      // Handle Facebook login
                    },
                  ),
                  SizedBox(width: screenWidth * 0.05),
                    SocialButton(
                    icon: Icons.g_translate,
                    backgroundColor: Colors.redAccent,
                    label: 'Google',
                    onPressed: () {
                      // Handle Google login
                    },
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.004),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Colors.black, // Set text color to black
                      ),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: const Color.fromARGB(255, 33, 121, 194), // Set text color to blue
                        fontWeight:
                            FontWeight.bold, // Optionally, make "Sign Up" bold
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
