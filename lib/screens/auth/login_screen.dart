import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),

            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
              obscureText: true,
            ),

            const SizedBox(height:20),

            Visibility(
              visible: authProvider.isLoading,
              child: const CircularProgressIndicator(),
            ),

            ElevatedButton(
              onPressed: (){
                authProvider.login(
                  emailController.text,
                  passwordController.text,
                );
              },
              child: const Text("Login"),
            )

          ],
        ),
      ),
    );
  }
}