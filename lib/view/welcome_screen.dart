import 'package:coinpay_app/utils/theme.dart';
import 'package:coinpay_app/view/signin_screen.dart';
import 'package:coinpay_app/view/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenColor,
      body: Column(
        children: [
          const Spacer(flex: 2),
          Center(
            child: Image.asset(
              'lib/assets/image/logo_grab.png',
              width: 128,
              height: 47,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Your everyday everything app',
            style: AppTextStyles.whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(flex: 1),
          Expanded(
            flex: 6,
            child: Stack(
              children: [
                Positioned(
                  top: -120,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'lib/assets/image/login_screen_illustration.png',
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'lib/assets/image/white_bg_illustration.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 24,
                  right: 24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SigninScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: AppColors.greenColor,
                          foregroundColor: AppColors.whiteColor,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Log In',
                          style: AppTextStyles.whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupScreen()),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppColors.blackButtonColor,
                          side: const BorderSide(
                            color: AppColors.blackButtonColor,
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'New to Grab? Sign up!',
                          style: AppTextStyles.blackButtonTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
