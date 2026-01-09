import 'package:agromart/constants/colors.dart';
import 'package:agromart/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SignInScreen());
}

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Title
            Text(
              'Sign In',
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 45,
                fontWeight: FontWeight.w900,
              ),
            ),

            const SizedBox(height: 20),

            //Image
            Image.asset('lib/assets/images/img1.png', height: 250),

            const SizedBox(height: 20),

            //Text Fields
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  _textField('Phone Number'),
                  const SizedBox(height: 15.0),
                  _textField('Password', isPassword: true),
                ],
              ),
            ),

            const SizedBox(height: 10),

            //Forgot Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    // Navigate to Forgot Password screen (later)
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            //Sign In Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 130,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                // Handle sign in action
              },

              child: Text(
                'Sign In',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            //Sign Up Redirect
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: AppColors.textColor, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to Sign Up screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  //Reusable Text Field Widget
  Widget _textField(String hintText, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: const Color.fromARGB(255, 172, 170, 170),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
