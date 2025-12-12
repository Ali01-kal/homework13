import 'package:flutter/material.dart';

class PassLogSign extends StatefulWidget {
  const PassLogSign({super.key});

  @override
  State<PassLogSign> createState() => _PassLogSignState();
}

class _PassLogSignState extends State<PassLogSign> {
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
        child: Center(
          child:  Padding(padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration:InputDecoration(
                    labelText: "Email",
                    labelStyle:TextStyle(color:  Colors.white),
                    border:OutlineInputBorder(), 
                    filled: true,
                    fillColor: Colors.blue,
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty) return "Данное поле пусто";
                    if(!value.contains("@")) return "не соддержит @";
                    return null;
                  },
                ),
                
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty) return "Данное поле пусто";
                    if(value.length < 6) return "не менее 6 символов";
                    return null;
                  },
                ),

                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {
                  if(_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Поздравляем вы успешно зарегистировались!")));
                  }
                }, child: Text("Войти")),

              ],
            )),
          
        )),
      ),
    );
  }
}