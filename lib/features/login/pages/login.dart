import 'package:akulbiti/features/firebaseUtils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../layout_view.dart';
import '../../settings_provider.dart';

class Loginview extends StatelessWidget {
  static String routeName = 'loginview';
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var formkey= GlobalKey<FormState>();

   Loginview({super.key});

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
                      padding: const EdgeInsets.only(top: 50),
                      child: Center(
                        child: Image.asset(
                          alignment: Alignment.center,
                          "asstes/image/Logo_new_color.png",
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40,bottom: 10),
                      child: Text("Welcome Back",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Hello Jos, sign in to continue!",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                      ),),
                    ),
                    const Text("Or Create new account",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color:   Color(0xff70B9BE),
                    ),),

                  ],
                ),
              ),
              const SizedBox(height: 40,),
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
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';  // التحقق من الحقل
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
                  controller: passwordController,
                  obscureText: true,  // يجعل النص مخفيًا (مثل كلمة المرور)
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),  // حدود للحقل
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),  // أيقونة لرؤية كلمة المرور
                      onPressed: () {
                        // يمكنك إضافة وظيفة هنا لعرض أو إخفاء كلمة المرور
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';  // التحقق من الحقل
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if(formkey.currentState!.validate()){
                          FirebaseUtils().loginUserAccount(emailController.text, passwordController.text);
                        }
                        Navigator.pushNamed(context, LayoutView.routeName);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15), // لتحديد حجم الزر
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),  // حواف دائرية للزر
                        ),
                        backgroundColor: const Color(0xff70B9BE),  // لون الخلفية
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(fontSize: 18, color: Colors.white),  // تحديد نمط النص
                      ),
                    ),
                    const SizedBox(height: 15,),
                    const Text('Forgot Password?',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff70B9BE),
                    ),),
                    const SizedBox(height: 10,),
                    const Text("OR",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),)
                  ],
                ),
              ),
              const SizedBox(height: 20,),
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
                          padding: const EdgeInsets.symmetric(horizontal:20, vertical: 15), // لتحديد حجم الزر
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),  // حواف دائرية للزر
                          ),
                          backgroundColor: Colors.white60,  // لون الخلفية
                        ),
                          child: Row(
                            children: [
                              Image.asset("asstes/image/Facebook - Logo.png"),
                              SizedBox(width: 50,),
                              const Text('Connect with Facebook',style: TextStyle(
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
              const SizedBox(height: 10,),
              Container(
                  width: 350,
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Sign In button pressed');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal:20, vertical: 15), // لتحديد حجم الزر
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),  // حواف دائرية للزر
                          ),
                          backgroundColor: Colors.white60,  // لون الخلفية
                        ),
                        child: Row(
                          children: [
                            Image.asset("asstes/image/Google - Logo.png"),
                            const SizedBox(width: 50,),
                            const Text('Connect with Google',style: TextStyle(
                                color: Colors.black,
                                fontSize: 15
                            ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
