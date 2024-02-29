import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../routes/app_pages.dart';
import '../controllers/lets_you_in_controller.dart';

class LetsYouInView extends GetView<LetsYouInController> {
  const LetsYouInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LetsYouInView'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              child: Assets.images.letyouin.image(width: 360, height: 200),
            ),
            Text(
              "Let’s you in",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.symmetric(vertical: 10),
              width: double.infinity,
              height: 60,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text('Continue with Facebook'),
                icon: Assets.images.fb.image(width: 24, height: 24),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.white,
                  side: BorderSide(
                    width: 2,
                    strokeAlign: 2,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.symmetric(vertical: 10),
              width: double.infinity,
              height: 60,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text('Continue with Google'),
                icon: Assets.images.google.image(width: 24, height: 24),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.white,
                  side: BorderSide(
                    width: 2,
                    strokeAlign: 2,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.symmetric(vertical: 10),
              width: double.infinity,
              height: 60,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text('Continue with Apple'),
                icon: Assets.images.apple.image(width: 24, height: 24),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.white,
                  side: BorderSide(
                    width: 2,
                    strokeAlign: 2,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              width: double.infinity,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: 96,
                      height: 1,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'or',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF616161),
                        fontSize: 18,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      width: 96,
                      height: 1,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed:(){Get.toNamed(Routes.SIGN_IN);},
                child: Text('Sign in with password'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff01B763),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  elevation:10,
                  shadowColor: Color(0xff01B763),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?'),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: (){Get.toNamed(Routes.SIGN_UP);},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xff01B763),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
