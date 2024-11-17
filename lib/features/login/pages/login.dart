import 'package:akulbiti/features/Home/page/HomePage.dart';
import 'package:akulbiti/features/Register/pages/register.dart';
import 'package:akulbiti/features/firebaseUtils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../layout_view.dart';
import '../../settings_provider.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Loginview extends StatefulWidget {
  static String routeName = 'loginview';

   Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var formkey= GlobalKey<FormState>();
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

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
                    Padding(
                      padding: const EdgeInsets.only(top: 40,bottom: 10),
                      child: Text("Welcome Back",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text("Hello Jos, sign in to continue!",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                      ),),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, RegisterView.routeName);
                      },
                      child: Text("Or Create new account",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color:   Color(0xff70B9BE),
                      ),),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 40,),
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
              SizedBox(height: 10,),
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
              SizedBox(height: 20,),
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
                    SizedBox(height: 15,),
                    Text('Forgot Password?',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff70B9BE),
                    ),),
                    SizedBox(height: 10,),
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
                         signInWithGoogle();
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
