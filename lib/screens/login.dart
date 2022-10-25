import 'package:exam_sports_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

var formKey = GlobalKey<FormState>();
TextEditingController emailcontroller = new TextEditingController();
TextEditingController passwordcontroller = new TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051B28) ,
      body: Container(
        decoration: BoxDecoration(

          ),

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 97,),
                Text("Login", style: TextStyle(fontSize: 38, color: Colors.white),),
                SizedBox(height: 20,),
                Text("Lets Enter Your", style: TextStyle(fontSize: 28, color: Colors.white),),
// ths is where th e;logicx of the valiudator is written
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        SizedBox(height: 150,),
                        TextFormField(
                          validator: (value){
                            if (value!.length < 4)
                              return "Email adress is wrong";},
                          controller: emailcontroller,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration:  InputDecoration(
                              hintText: "Email",
                              border:  OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              )
                          ),
                        ),
                        SizedBox(height: 70,),
                        TextFormField(
                          validator: (value){
                            if (value!.length < 8)
                              return "Password is wrong";},
                          controller: passwordcontroller,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration:  InputDecoration(
                              hintText: "Password",
                              border:  OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              )
                          ),
                        ),
                        SizedBox(height: 60,),
                      ],
                    )
                ),

                SizedBox(height: 50,),

                InkWell(
                  onTap: ((){

                   formKey.currentState?.validate()== true? Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())) : 1==1;
                  }),
                  child: Container(
                    width: 325,
                    height: 57,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text("Login"),
                    ),
                  ),
                )




              ],
            ),
          ),
        ),
                  )
    );
  }
}