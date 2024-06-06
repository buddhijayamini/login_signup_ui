import 'package:flutter/material.dart';
import 'package:login_signup_ui/component/custom_button.dart';
import 'package:login_signup_ui/component/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Let’s Get Started!',
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                'Create an account to Aluraf get all features',
                style: TextStyle(fontSize: screenWidth * 0.04),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.04),
              CustomTextField(
                hintText: 'Name',
                icon: Icons.person,
                defaultText: 'Johne Williams',
              ),
              CustomTextField(
                hintText: 'Email',
                icon: Icons.email,
                defaultText: '',
              ),
              CustomTextField(
                hintText: 'Phone',
                icon: Icons.phone,
                defaultText: '',
              ),
              CustomTextField(
                hintText: 'Password',
                icon: Icons.lock,
                obscureText: true,
                defaultText: '',
              ),
              CustomTextField(
                hintText: 'Confirm Password',
                icon: Icons.lock,
                obscureText: true,
                defaultText: '',
              ),
              SizedBox(height: screenHeight * 0.02),
              CustomButton(
                text: 'CREATE',
                onPressed: () {
                  // Handle sign up
                },
              ),
              SizedBox(height: screenHeight * 0.005),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Colors.black, // Set text color to black
                      ),
                    ),
                    Text(
                      'Login here',
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: const Color.fromARGB(255, 38, 132, 209), // Set text color to blue
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
