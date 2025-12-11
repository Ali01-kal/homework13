import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 2. formKey және controller-лер
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey, // 3. Form key
          child: Column(
            children: [
              // 4. Email field
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Введите email";
                  }
                  if (!value.contains("@")) {
                    return "Email должен содержать @";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // 5. Password field
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Пароль",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Введите пароль";
                  }
                  if (value.length < 6) {
                    return "Минимум 6 символов";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // 6. button
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // 7. success + clear
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Успешный вход!"),
                      ),
                    );

                    emailController.clear();
                    passwordController.clear();
                  }
                },
                child: const Text("Войти"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
