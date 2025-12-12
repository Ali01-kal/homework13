import 'package:flutter/material.dart';

class Google extends StatefulWidget {
  const Google({super.key});

  @override
  State<Google> createState() => _GoogleState();
}

class _GoogleState extends State<Google> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  final _formKey = GlobalKey<FormState>();
  bool _abscureText = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Center(
          child: Padding(padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.blue,
                
                  ),
                  style: TextStyle(color: Colors.white),
                  validator: (value) {
                    if(value == null || value.isEmpty) return "Данное поле пусто";
                    if(!value.contains("@")) return "Не соддержит  @";
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration:InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.blue,
                    
                    
                    
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        _abscureText =! _abscureText;
                      });
                    }, icon: Icon(_abscureText? Icons.visibility_off: Icons.visibility)),
                  ),obscureText: _abscureText,
                  style: TextStyle(color: Colors.white),
                  validator: (value) {
                    
                    if(value == null || value.isEmpty) return "Даное поле пусто";
                    if(value.length < 6) return "Не менее 6 символов";
                    return null;
                  },
                ),
               
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {
                  if(_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Успешно")));
                  }
                }, child: Text("Войти")),

                
                
              ],
            ), 
          ),
        ),
         ),
      ),
    );
  }
}