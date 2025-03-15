import 'package:core/screens/auth/clipper.dart';
import 'package:core/screens/auth/sign_up_entrepreneur.dart';
import 'package:core/screens/auth/sign_up_investor.dart';
import 'package:flutter/material.dart';

class SignUpAS extends StatefulWidget {
  const SignUpAS({super.key});

  @override
  State<SignUpAS> createState() => _SignUpASState();
}

class _SignUpASState extends State<SignUpAS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
            ]),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => SignUpEntrepreneurScreen()));
              },
              child: Container(
                height: 50,
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [
                      Color(0xfff7b858),
                      Color.fromARGB(255, 214, 161, 81)
                    ])),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Sign up as Entrepreneur",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SignUpInvestorScreen()));
              },
              child: Container(
                height: 50,
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [
                      Color(0xfff7b858),
                      Color.fromARGB(255, 214, 161, 81)
                    ])),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Sign up as Investor",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: Colors.white),
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
