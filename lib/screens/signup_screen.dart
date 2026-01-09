import 'package:agromart/constants/colors.dart';
import 'package:agromart/screens/signin_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SignUpScreen());
}

enum UserRole { farmer, buyer }

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  UserRole? selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              // Title
              Text(
                'Create Account',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 45,
                  fontWeight: FontWeight.w900,
                ),
              ),

              const SizedBox(height: 15),

              // Image
              Image.asset('lib/assets/images/img1.png', height: 250),

              const SizedBox(height: 20),

              // Text Fields
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    _textField('Full Name'),
                    const SizedBox(height: 15),
                    _textField('Phone Number'),
                    const SizedBox(height: 15),
                    _textField('Password', isPassword: true),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Radio Buttons (Farmer / Buyer)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio<UserRole>(
                    value: UserRole.farmer,
                    groupValue: selectedRole,
                    activeColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        selectedRole = value;
                      });
                    },
                  ),
                  const Text("I’m Farmer"),

                  const SizedBox(width: 25),

                  Radio<UserRole>(
                    value: UserRole.buyer,
                    groupValue: selectedRole,
                    activeColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        selectedRole = value;
                      });
                    },
                  ),
                  const Text("I’m Buyer"),
                ],
              ),

              const SizedBox(height: 25),

              // Sign Up Button 
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
                'Sign Up',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

              const SizedBox(height: 15),

              // Login Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to login screen (functionality not implemented)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 5, 3, 3),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable TextField (UI only)
  Widget _textField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: const Color.fromARGB(255, 172, 170, 170),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
