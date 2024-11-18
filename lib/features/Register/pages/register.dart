import 'package:akulbiti/features/firebaseUtils.dart';
import 'package:akulbiti/features/login/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';

class RegisterView extends StatelessWidget {
  static String routeName = 'register';
  var formkey= GlobalKey<FormState>();
  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();

   RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: Image.asset(
                          alignment: Alignment.center,
                          "asstes/image/Logo_new_color.png",
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40,bottom: 10),
                      child: Text("Hello! Create Account",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account? ',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),),

                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, Loginview.routeName);
                          },
                          child: const Text('Sign in',style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color(0xff70B9BE),
                          ),
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
              const SizedBox(height: 40,),
              Container(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller:nameController ,
                  decoration: InputDecoration(
                    labelText: 'Your name',

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),  // حدود للحقل
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';  // التحقق من الحقل
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Username or Email',

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),  // حدود للحقل
                  ),
                  validator: (value) {
                    value = value?.trim();  // إزالة المسافات الزائدة

                    if (value == null || value.isEmpty) {
                      return "You must enter an e-mail address";
                    }

                    var reges = RegExp(
                        r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

                    if (!reges.hasMatch(value)) {
                      return "Invalid e-mail address";
                    }
                    return null;
                  },

                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller:passwordController ,
                  obscureText: true,  // يجعل النص مخفيًا (مثل كلمة المرور)
                  decoration: InputDecoration(
                    labelText: 'passwoed',

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),  // حدود للحقل
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility),  // أيقونة لرؤية كلمة المرور
                      onPressed: () {
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "You must enter your password";
                    }

                    var regex = RegExp(
                        r"(?=^.{8,}$)(?=.*[!@#$%^&*]+)(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$");

                    if (!regex.hasMatch(value)) {
                      return "The password must include at least \n* one lowercase letter, \n* one uppercase letter, \n* one digit, \n* one special character,\n* at least 8 characters long.";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if(formkey.currentState!.validate()){
                          FirebaseUtils().creatUserAccount(emailController.text, passwordController.text);
                        }
                        Navigator.pushNamed(context, Loginview.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15), // لتحديد حجم الزر
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),  // حواف دائرية للزر
                        ),
                        backgroundColor: Color(0xff70B9BE),  // لون الخلفية
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(fontSize: 18, color: Colors.white),  // تحديد نمط النص
                      ),
                    ),
                    SizedBox(height:20,),
                    Text("OR",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Container(
                  width: 350,
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Sign In button pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal:20, vertical: 15), // لتحديد حجم الزر
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),  // حواف دائرية للزر
                          ),
                          backgroundColor: Colors.white60,  // لون الخلفية
                        ),
                        child: Row(
                          children: [
                            Image.asset("asstes/image/Facebook - Logo.png"),
                            SizedBox(width: 50,),
                            Text('Connect with Facebook',style: TextStyle(
                                color: Colors.black,
                                fontSize: 15
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Container(
                  width: 350,
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Sign In button pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal:20, vertical: 15), // لتحديد حجم الزر
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),  // حواف دائرية للزر
                          ),
                          backgroundColor: Colors.white60,  // لون الخلفية
                        ),
                        child: Row(
                          children: [
                            Image.asset("asstes/image/Google - Logo.png"),
                            SizedBox(width: 50,),
                            Text('Connect with Google',style: TextStyle(
                                color: Colors.black,
                                fontSize: 15
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
