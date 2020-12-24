import 'package:firebaseauthentication/theme/routes.dart';
import 'package:flutter/material.dart';

class openingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.network(
      "https://i.giphy.com/media/MdSd5OVojIyK8EjaqQ/giphy.webp",
      fit: BoxFit.contain,
    );

    final loginButton = Material(
      color: Colors.black,
      elevation: 20,
      borderRadius: BorderRadius.circular(35),
      child: MaterialButton(
        child: Text(
          "Login",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.yellow,
          ),
        ),
        minWidth: (mq.size.width / 1.2),
        onPressed: (){
          Navigator.of(context).pushNamed(AppRoutes.authLogin);
        },
      ),
    );

    final signupButton = Material(
      color: Colors.black,
      elevation: 10,
      borderRadius: BorderRadius.circular(35),
      child: MaterialButton(
        child: Text(
          "Register",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.yellow,
          ),
        ),
        minWidth: (mq.size.width / 1.2),
        onPressed: (){
          Navigator.of(context).pushNamed(AppRoutes.authRegister);
        },
      ),
    );

    final buttons = Column(
      children: [loginButton,
        Padding(
          padding: EdgeInsets.all(17),
        ),
        signupButton],
    );

    return Scaffold(
      backgroundColor: Colors.purple,
      body: Padding(
        padding: EdgeInsets.all(36),
        child: Column(
          children: [
            SizedBox(height: 25,),
            logo,
            SizedBox(height: 150,),
            buttons
          ],
        ),
      ),
    );
  }
}
