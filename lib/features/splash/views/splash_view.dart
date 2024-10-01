import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_whatsapp/core/utils/constants/app_assets.dart';
import 'package:mini_whatsapp/core/utils/router/app_routes.dart';

import '../../../core/utils/constants/app_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.whatsAppLogo,
              placeholderBuilder: (BuildContext context) => const SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(),
              ),
            ),
            const Spacer(),
            const Text(
              'The best chat app of this century',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 84),
            InkWell(
              onTap: () {
                Future.delayed(const Duration(seconds: 3)).then((_) {
                  Navigator.pushNamed(context, AppRoutes.signIn);
                });
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
