import 'package:education_app/Screens/courses_screen.dart';
import 'package:education_app/Services/validator_service.dart';
import 'package:education_app/Widgets/account_buuton.dart';
import 'package:education_app/Widgets/input_lable.dart';
import 'package:education_app/Widgets/input_textfield.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final fullnameCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 140,
              child: Text(
                'Create Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputLable(text: 'Email'),
                    InputTextfield(
                      hint: 'careerplace@gmail.com',
                      controller: emailCtrl,
                      validate: ValidatorService.validateEmail,
                    ),

                    const SizedBox(height: 16),

                    InputLable(text: 'Password'),
                    InputTextfield(
                      hint: '••••••••••',
                      controller: passCtrl,
                      ispassword: true,
                      validate: ValidatorService.validatePassword,
                    ),

                    const SizedBox(height: 16),

                    InputLable(text: 'Full Name'),
                    InputTextfield(
                      hint: 'desing ninja',
                      controller: fullnameCtrl,
                      validate: ValidatorService.validateName,
                    ),

                    const SizedBox(height: 30),

                    AccountBuuton(
                      text: 'Create an account',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          //perform login
                        }

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => CoursesScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
