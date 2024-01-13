
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';
import '/pages/login/login_password_field.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idController = TextEditingController();
    final passwordController = TextEditingController();


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.heart_circle_fill,
                  color: Color(0xFFB8B7FA),
                  size: 40,
                ),
                const Text(
                  'LUSTLE',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB8B7FA)),
                  ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    controller: idController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: '아이디',
                    ),
                  ),
                  const SizedBox(height: 20),
                  PasswordField(passwordController),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  context.go('/');
                  // ref.read(authProvider.notifier).login(idController.text,passwordController.text,context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double .infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Text('로그인'),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                  child: const Text('아이디 찾기'),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    // 비밀번호 찾기 버튼을 눌렀을 때 로직을 추가
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                  child: const Text('비밀번호 찾기'),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    // 회원가입 버튼을 눌렀을 때 로직을 추가
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                  child: const Text('회원가입'),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              'GDSC 팀Q',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



