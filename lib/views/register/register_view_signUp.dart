import 'package:dsw60268/utils/app_colors.dart';
import 'package:dsw60268/utils/app_images.dart';
import 'package:dsw60268/utils/app_texts.dart';
import 'package:dsw60268/views/login/login_view_signIn.dart';
import 'package:dsw60268/views/vidgets/basic_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 62),
                  Image.asset(AppImages.logo),
                  SizedBox(height: 21),
                _singUp,
                  SizedBox(height: 46),
                  BasicTextFormField(initialValue: ''),
                  TextFormField(),
                  SizedBox(height: 40),
                  TextFormField(),
                  SizedBox(height:40),
                  TextFormField(),

                  ElevatedButton(
                    child: const Text('Open route'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const LoginView(),
                        ),
                      );
                    },

                  ),
                  GestureDetector(
                    onTap:() => print('xxx'),
                    child: Text(AppTexts.signUp, style : TextStyle(fontSize: 30)),
                  ),

                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}



Widget  get _singUp {
  return Align(
    alignment: .topLeft,
    child: Text(
      AppTexts.signUp,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: AppColors.purpleColor,
      ),
    ),
  );
}



