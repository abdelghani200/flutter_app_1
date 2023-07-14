import 'package:flutter/material.dart';
import 'package:flutter_app_1/constants.dart';

import '../widgets/home/home_body.dart';
// import 'package:flutter_app_1/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title: const Text(
        'Welcome To My Store',
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        )
      ],
    );
  }
}
