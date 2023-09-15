import 'package:app/app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routePath = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
        ),
        body: Container(),
      ),
    );
  }
}
