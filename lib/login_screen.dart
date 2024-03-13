import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kullanıcı Adı:',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(
          child: TextField(),
        ),
        Text(
          'Şifre:',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
