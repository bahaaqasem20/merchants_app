import 'package:flutter/material.dart';
import 'package:merchants_training/core/utils/app_colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _idController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4B6CB7), Color(0xFF182848)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/residential.png", width: 180,),
                  SizedBox(height: 40),
                  Text("تسجيل الدخول", style: TextStyle(color: AppColors.primaryLight, fontSize: 22, fontWeight: FontWeight.bold),),
                  SizedBox(height: 40),
                  TextField(
                    controller: _idController,
                    decoration: InputDecoration(
                      labelText: "رقم المعرف | الهوية",
                      labelStyle: TextStyle(color: AppColors.primaryLight),
                      prefixIcon: Icon(Icons.person, color: AppColors.primaryLight),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.grey)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primaryLight),
                      ),
                    ),
                    style: TextStyle(color: AppColors.primaryLight),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 40),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "كلمة المرور",
                      labelStyle: TextStyle(color: AppColors.primaryLight),
                      prefixIcon: Icon(Icons.lock, color: AppColors.primaryLight),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.grey)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primaryLight),
                      ),
                    ),
                    style: TextStyle(color: AppColors.primaryLight),
                    obscureText: true,
                  ),
                  SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_idController.text.isEmpty ||
                        _passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('الرجاء إدخال جميع البيانات')),
                      );
                    } else {

                      print('Email: ${_idController.text}');
                      print('Password: ${_passwordController.text}');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        color: AppColors.primaryLight,
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                },
                    child: Text(
                      'نسيت كلمة المرور؟',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),

                ],
              ),
            ),
        ),
      ),


    );
  }
}
