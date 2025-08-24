import 'package:flutter/material.dart';
import 'package:helawork_flutter/reusable/auth_theme.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [              
              const Text(
                "HELAWORK",
                style:TextStyle(
                  fontSize: 32;
                  fontWeight: fontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                height: 2,
                width: 40,
                color: KPrimaryBlue,
              ),
              const SizedBox(height: 16),
              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 20,color: Colors.white70),

              ),
                     
              
            ]
          )
        )
      )
    )
    // TODO: implement build
    throw UnimplementedError();
  }
  
}