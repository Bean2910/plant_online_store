import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../routes/app_pages.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(24),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 139),
                  padding: EdgeInsets.symmetric(
                    vertical: 49,
                  ),
                  child: Assets.images.logoText.image(),
                ),
                Text('Create Your Account'),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        maxHeight: 20,
                        maxWidth: 20,
                      ),
                      prefixIcon: Assets.iconsBold.message.svg(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: PassWordField(),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [CheckBoxField(), Text('Remember me')],
                  ),
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign up'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff01B763),
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      elevation: 10,
                      shadowColor: Color(0xff01B763),
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
                        flex: 1,
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
                        flex: 2,
                        child: Text(
                          'or continue with',
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
                        flex: 1,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: InkWell(
                         borderRadius: BorderRadius.circular(16),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 18,
                              horizontal: 32,
                            ),
                            child: Assets.images.fb.image(
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: InkWell(
                         borderRadius: BorderRadius.circular(16),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 18,
                              horizontal: 32,
                            ),
                            child: Assets.images.google.image(
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: InkWell(
                         borderRadius: BorderRadius.circular(16),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 18,
                              horizontal: 32,
                            ),
                            child: Assets.images.apple.image(
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        onTap: (){Get.toNamed(Routes.SIGN_IN);},
                        child: Text(
                          'Sign In',
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
        ),
      ),
    );
  }
}

class PassWordField extends StatefulWidget {
  const PassWordField({super.key});

  @override
  State<StatefulWidget> createState() {
    return PassWordFieldState();
  }
}

class PassWordFieldState extends State<PassWordField> {
  bool _passwordVisible = true;

  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blue,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            maxWidth: 20,
          ),
          suffixIconConstraints: BoxConstraints(
            maxWidth: 20,
            maxHeight: 20,
          ),
          prefixIcon: Assets.iconsBold.lock.svg(width: 20, height: 20),
          //suffixIcon: Assets.iconsBold.lock.svg(width: 20, height: 20),
          suffixIcon: InkWell(
            child: _passwordVisible
                ? Assets.iconsBold.show.svg(width: 20, height: 20)
                : Assets.iconsBold.hide.svg(width: 200, height: 20),
            onTap: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}

class CheckBoxField extends StatefulWidget {
  const CheckBoxField({super.key});

  @override
  State<StatefulWidget> createState() {
    return CheckBoxFieldState();
  }
}

class CheckBoxFieldState extends State<CheckBoxField> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      side: BorderSide(
        color: Color(0xff01B763),
      ),
      activeColor: Color(0xff01B763),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      // /fillColor:  Color(0xff01B763),
      value: this.isCheck,
      onChanged: (value) {
        setState(() {
          this.isCheck = value ?? false;
          print(value);
        });
      },
    );
  }
}
