import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab10_app_126/page/dashboard.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) async {
    debugPrint('Email: ${data.name}, Password: ${data.password}');

    try {
      final response = await http.post(
        Uri.parse('https://642021126.pungpingcoding.online/api/login'),
        body: {
          'email': data.name,
          'password': data.password,
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final token = responseData['token'];
        final username = responseData['user']['name']; // Get the username from the API
        print("token : $token");

        // Save the token and username to shared preferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('userToken', token);
        prefs.setString('username', username);

        // Login successful
        return null;
      } else if (response.statusCode == 401) {
        // Login Fail
        return 'ชื่อผู้ใช้ หรือ พาสเวิร์ดไม่ถูกต้อง กรุณาลองใหม่';
      } else {
        // Other errors
        return 'เกิดข้อผิดพลาดในการเข้าสู่ระบบ';
      }
    } catch (e) {
      // Handle exceptions (e.g., network errors)
      return 'เกิดข้อผิดพลาด';
    }
  }

  Future<String?> _signupUser(SignupData data) async {
    int role = 2;
    print("------------------------------------");
    print("Email: ${data.name}");
    print("password: ${data.password}");
    print("ConfirmPassoword: ${data.password}");
    print("name: ${data.additionalSignupData!['fullname']}");
    print("Telephone: ${data.additionalSignupData!['phone_number']}");
    print("Role: $role");
    print("-----------------------------------");

    try {
      final response = await http.post(
        Uri.parse('https://642021126.pungpingcoding.online/api/register'),
        headers: {
          'Content-Type': 'application/json'
        },
        body: jsonEncode({
          "name": data.additionalSignupData!["fullname"],
          "email": data.name,
          "password": data.password,
          "password_confirmation": data.password,
          "telephone": data.additionalSignupData!["phone_number"],
          "role": role,
        }),
      );

      if (response.statusCode == 201) {
        // Registration successful
        return null;
      } else {
        // Registration failed
        final responseData = json.decode(response.body);
        print(response.statusCode);
        return responseData['message'] ??
            'ไม่สามารถสมัครสมาชิกได้ กรุณาลองใหม่';
      }
    } catch (e) {
      // Handle exceptions (e.g., network errors)
      print('Error during registration: $e');
      return 'เกิดข้อผิดพลาด';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      // title: 'PK SHOP',
      theme: LoginTheme(
        primaryColor: const Color.fromARGB(255, 32, 49, 126),
        accentColor: Colors.white,
        pageColorDark: const Color.fromARGB(255, 255, 255, 255),
        pageColorLight: const Color.fromARGB(255, 32, 81, 126),
        authButtonPadding: const EdgeInsets.only(top: 30, bottom: 30),
        switchAuthTextColor: const Color.fromARGB(255, 32, 49, 126),
        footerTextStyle: TextStyle(color: Color.fromARGB(255, 32, 49, 126)),
        // bodyStyle: TextStyle(fontWeight: FontWeight.bold),
        
        
      ),
      logo: const AssetImage('assets/images/logo-pkshop.png'),
      onLogin: _authUser,
      onSignup: _signupUser,
      loginAfterSignUp: false,
      hideForgotPasswordButton: true,
      additionalSignupFields: [
        const UserFormField(
          keyName: 'fullname',
          displayName: 'ชื่อ-นามสกุล',
          icon: Icon(FontAwesomeIcons.userAstronaut),
        ),
        UserFormField(
          keyName: 'phone_number',
          displayName: 'เบอร์โทรศัพท์',
          userType: LoginUserType.phone,
          icon: const Icon(FontAwesomeIcons.phone),
          fieldValidator: (value) {
            final phoneRegExp = RegExp(
              r'^0[0-9]{9}$', // Thai phone number format
            );
            if (value == null || !phoneRegExp.hasMatch(value)) {
              return "เบอร์โทรศัพท์ไม่ถูกต้อง";
            }
            return null;
          },
        ),
      ],
      // loginProviders: <LoginProvider>[
      //     LoginProvider(
      //       icon: FontAwesomeIcons.google,
      //       label: 'Google',
      //       callback: () async {
      //         debugPrint('start google sign in');
      //         await Future.delayed(loginTime);
      //         debugPrint('stop google sign in');              
      //         return null;
      //       },
      //     ),
      //     LoginProvider(
      //       icon: FontAwesomeIcons.githubAlt,
      //       label: 'Github',
      //       callback: () async {
      //         debugPrint('start github sign in');
      //         await Future.delayed(loginTime);
      //         debugPrint('stop github sign in');              
      //         return null;
      //       },
      //     ),
      //   ],

      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const DashboardScreen(),
        ));
      },
      onRecoverPassword: (_) => Future(() => null),
      messages: LoginMessages(
        userHint: 'อีเมล',
        passwordHint: 'รหัสผ่าน',
        confirmPasswordHint: 'ยืนยันรหัสผ่าน',
        loginButton: 'เข้าสู่ระบบ',
        signupButton: 'สมัครสมาชิก',
        additionalSignUpSubmitButton: "สมัครสมาชิก",
        recoverPasswordButton: 'ยืนยัน',
        goBackButton: 'ย้อนกลับ',
        confirmPasswordError: 'พาสเวิร์ดไม่ตรงกัน!!',
        signUpSuccess: "สมัครสมาชิกสำเร็จ",
        additionalSignUpFormDescription:
            "กรอกข้อมูลของท่านให้ครบและตรวจสอบให้ครบถ้วน!! ก่อนทำการสมัครสมาชิก",
      ),
    );
  }
}
