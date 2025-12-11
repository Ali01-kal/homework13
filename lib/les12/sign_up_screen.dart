import 'dart:developer';





import 'package:flutter/material.dart';
import 'package:flutter_application_my_app/les12/home_screen.dart';
import 'package:flutter_application_my_app/utils/validators/app_validators.dart';




class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late GlobalKey<FormState> _formKey;

  bool _abscureText = true;
  bool _isloading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey();
    _abscureText = true;
    _isloading = false;
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Вход",
              style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 15.0),
              Form(
                key: _formKey,
                child: Column(
                children: [
                  TextFormField(
                    validator: (value)=>  AppValidator.emailValidate(value),
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email,color: Colors.blue,),
                      // suffixIcon: ,
                      // prefix: ,
                      // prefixIcon: ,
                      filled: true,
                      hintStyle: TextStyle(color: Colors.white),
                      fillColor: const Color.fromARGB(255, 37, 70, 127),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 10.0,
                        )
                      )

                    ),
                  ),
                  const SizedBox(height: 5.0,),
                  TextFormField(
                    validator: (value) => AppValidator.passwordValidate(value),
                    style: TextStyle(color: Colors.white),
                    obscureText: _abscureText,
                    decoration: InputDecoration(
                      hintText: "Password",
                       prefixIcon: Icon(Icons.lock,color: Colors.blue,),
                       suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _abscureText = !_abscureText;
                          });
                        },
                         icon: Icon(Icons.visibility_off,color: Colors.blue,),),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.white),
                      fillColor: const Color.fromARGB(255, 37, 70, 127),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 10.0,
                        )
                      )

                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  TextButton(onPressed: () {
                    if(_formKey.currentState!.validate()){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeScreen()));
                    }
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12.0),
                    ),
                  ),
                  
                   child: Text("Войти",style: TextStyle(fontSize: 24.0,color: Colors.white,fontWeight: FontWeight.w500))),
                ],
              ))
            ],
          ),
        ),
        ),
      ),
    );
  }
}