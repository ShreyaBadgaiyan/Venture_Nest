import 'package:core/screens/clipper.dart';
import 'package:flutter/material.dart';
import 'clipper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    Widget _buildEmail() {
      return Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 6,
            color: Colors.grey.shade400,
          )
        ]),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Enter your email';
            }
          },
          controller: emailController,
          decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.email),
              hintText: 'Enter your email'),
        ),
      );
    }

    Widget _buildPassword() {
      return Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 6,
            color: Colors.grey.shade400,
          )
        ]),
        child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Enter your password';
            }
          },
          controller: passwordController,
          decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.lock_outline_rounded),
              hintText: 'Enter your password'),
        ),
      );
    }

    return Scaffold(
        body: Column(
      children: [
        Stack(children: [
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width, 300),
            painter: RPSCustomPainter(),
          ),
          Positioned(
            top: 16,
            right: -5,
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 300),
              painter: PSCustomPainter(),
            ),
          ),
          const Positioned(
              top: 220,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
                  ),
                  Text(
                    'Please sign in to continue',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  )
                ],
              ))
        ]),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [SizedBox(height: 25)],
          ),
        )
      ],
    ));
  }
}
