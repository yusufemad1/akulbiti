import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';

class Loginview extends StatelessWidget {
  static String routeName = 'loginview';

   Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
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
                  Text("Or Create new account",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color:   Color(0xff70B9BE),
                  ),),

                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              width: 350,
              height: 50,
              child: TextFormField(
                obscureText: true,  // يجعل النص مخفيًا (مثل كلمة المرور)
                decoration: InputDecoration(
                  labelText: 'Username or Email',

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
            SizedBox(height: 10,),
            Container(
              width: 350,
              height: 50,
              child: TextFormField(
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
                      print('Sign In button pressed');
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
    );
  }
}
