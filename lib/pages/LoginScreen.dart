import 'package:flutter/material.dart';
import 'package:login_signup_ui/pages/SignupScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate padding based on screen width
    double paddingValue = screenWidth * 0.05; // 5% of screen width

    // Calculate image height based on screen width and aspect ratio
    double imageHeight = screenWidth * 9 / 16; // 16:9 aspect ratio

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(paddingValue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Use AspectRatio to set the aspect ratio of the image
            AspectRatio(
              aspectRatio: 16 / 9, // Adjust as needed
              child: Image.asset(
                'assets/welcome.webp',
                fit: BoxFit.cover, // Cover the entire space
              ),
            ),
            const SizedBox(height: 16), // Added space below the image
            const Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Set text color to white
              ),
            ),
            const Text(
              'Log in to your existing account of Q Allure',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8), // Adjusted height for spacing
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
            ),
            const SizedBox(height: 8), // Adjusted height for spacing
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
            ),
            const SizedBox(height: 8), // Adjusted height for spacing
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.black), // Set text color to white
                ),
              ),
            ),
            const SizedBox(height: 8), // Adjusted height for spacing
            ElevatedButton(
              onPressed: () {},
              // ignore: sort_child_properties_last
              child: const Text('LOG IN', style: TextStyle(color: Colors.white)), // Set text color to white
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
            ),
            const SizedBox(height: 4), // Adjusted height for spacing
            const Text('Or connect using', style: TextStyle(color: Colors.white)), // Set text color to white
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook, color: Colors.white), // Set icon color to white
                  label: const Text('Facebook', style: TextStyle(color: Colors.white)), // Set text color to white
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.email, color: Colors.white), // Set icon color to white
                  label: const Text('Google', style: TextStyle(color: Colors.white)), // Set text color to white
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2), // Adjusted height for spacing
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: const Text(
                "Don't have an account? Sign Up",
                style: TextStyle(color: Colors.black), // Set text color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
