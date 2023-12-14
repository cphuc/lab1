import 'package:flutter/material.dart';
// import 'package:flutter_animal_app/pages/home_page.dart';
import 'package:flutter_animal_app/values/app_styles.dart';
import 'package:flutter_animal_app/values/app_colors.dart';
import 'package:flutter_animal_app/values/app_assets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: buildContent(),
      ),
    );
  }

  Widget buildContent() {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text('Welcome to', style: AppStyles.h3),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Animal',
                  style: AppStyles.h2.copyWith(
                    color: Appcolors.blackGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(right: 8)),
                Text(
                  'World"',
                  textAlign: TextAlign.right,
                  style: AppStyles.h4.copyWith(height: 0.5),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 72),
            child: RawMaterialButton(
              shape: CircleBorder(),
              fillColor: Appcolors.lighBlue,
              onPressed: () {
                // Chuyển đến trang HomePage và xóa đi tất cả các trang cũ khỏi ngăn xếp routes.
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Image.asset(AppAssets.rightArrow),
            ),
          ),
        ),
      ],
    );
  }
}

class HomePage {}
