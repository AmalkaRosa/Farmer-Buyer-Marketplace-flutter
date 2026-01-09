import 'package:agromart/constants/colors.dart';
import 'package:agromart/screens/signin_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const WelcomeScreen());
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //title
              Text(
                'Welcome to the \n Marketplace!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 45,
                  fontWeight: FontWeight.w900,
                ),
              ),

              const SizedBox(height: 20.0),

              //image
              Image.asset('lib/assets/images/img1.png', height: 300),

              const SizedBox(height: 30.0),

              //subtitle
              Text(
                'Fresh From Our Farms To \n Your Table',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 30.0),

              //get started button
              SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Get Start",
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}