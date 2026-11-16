import 'package:dsw60268/views/vidgets/basic_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/app_texts.dart';
import '../register/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 62),
                // Image.asset(AppImages.logo),
                SizedBox(height: 21),
                _singIn,
                SizedBox(height: 46),
                BasicTextFormField(initialValue: 'ddd'),
                TextFormField(),
                SizedBox(height: 40),
                TextFormField(),

                ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const RegisterView(),
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
    );
  }
}

Widget  get _singIn {
  return Align(
    alignment: .topLeft,
    child: Text(
      AppTexts.signIn,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: AppColors.purpleColor,
      ),
    ),
  );
}
