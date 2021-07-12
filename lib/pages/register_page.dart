import 'package:chat/widgets/btn_blue.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/labels.dart';
import 'package:chat/widgets/logo.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Logo(title:"Register"),
                _Form(),
                Container(
                    child: Column(
                    children: [
                      Label(
                        text: "Ya tienes cuenta?",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.w300
                        ),
                        onTap: (){},
                      ),
                      SizedBox(height: 10,),
                      Label(
                        text: "Registrate",
                        style: TextStyle(
                          color: Colors.blue[600],
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        onTap: (){
                          Navigator.pushReplacementNamed(context, 'login');
                        },
                      ),
                    ],
                  ),
                ),
                Label(
                  text: "Terminos y condiciones de uso",
                  style: TextStyle(
                    fontWeight: FontWeight.w200
                  ),
                  onTap: (){},
                )
              ],
          ),
            ),
        )
      )
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {

  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:40),
      padding: EdgeInsets.symmetric(horizontal: 50),

      child: Column(
        children: <Widget>[

          CustomInput(
            icon: Icons.perm_identity,
            placeholder: "Nombre",
            textController: nameCtrl,
          ),

          CustomInput(
            icon: Icons.mail_outline,
            placeholder: "Correo",
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),

          CustomInput(
            icon: Icons.lock_outlined,
            placeholder: "Contraseña",
            textController: passCtrl,
            isPassword: true,
          ),
          BtnBlue(
            text: "Ingresar",
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
              print(nameCtrl.text);
            },
          )
        ],
      ),
    );
  }
}
