import 'package:flutter/material.dart';
import 'package:flutter_blog/constants.dart';
import 'package:flutter_blog/controllers/MenuController.dart';
import 'package:flutter_blog/screens/main/component/side_menu.dart';
import 'package:get/get.dart';
import 'package:flutter_blog/screens/home/home_screen.dart';
import 'package:flutter_blog/screens/main/component/header.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MenuController _controller = Get.put(MenuController());
    return Scaffold(
      key: _controller.scaffoldKey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(
                child: HomeScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
