import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp1 extends StatelessWidget {
  const SignUp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(children: [
            const SizedBox(height: 49.0,),
            SvgPicture.asset(
              "assets/images/logo.svg",
            ),
            const SizedBox(height: 20.0,),
          
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 17.0,vertical: 68.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff89C6A7),
                    Color(0xff25596E),
                  ]),
              ),
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("welcome",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                    const SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "name",
                        hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 9,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "email",
                        hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 9,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "password",
                        hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 9,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "confirm password",
                        hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    Row(
                      spacing: 8.0,
                      children: [
                        Radio.adaptive(value: true),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "I accept the ",
                              ),
                              TextSpan(
                                text: "terms and conditions",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ),
            ),
            const SizedBox(height: 27.0,),
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
              
              boxShadow: [
                BoxShadow(
                    color: Color(0xff000000),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
              ]
            ),),
            TextButton(onPressed: () {},
            style:TextButton.styleFrom(
              backgroundColor: Color(0xff25596E),
              padding: const EdgeInsets.symmetric(
                vertical: 16.74,
                horizontal: 74.0,
              )
            ) ,
            child: Text("Sign Up1",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),))
          ],),
        )
      )),
    );
  }
}