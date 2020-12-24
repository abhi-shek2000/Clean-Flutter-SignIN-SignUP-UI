import 'package:firebaseauthentication/theme/routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final logo = Image.network(
    "https://i.giphy.com/media/MdSd5OVojIyK8EjaqQ/giphy.webp",
    fit: BoxFit.contain,
  );
  final _formkey = GlobalKey<FormState>();
  bool isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
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
        onPressed: () {
          print("Login Pressed");
        },
      ),
    );

    final registerForgetPass = Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 190,),
            child: FlatButton(
              onPressed: (){
                print("Forget Password Pressed");
              },
              child: Text("Forgot Password",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Text("Not Registered Yet ?",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.yellowAccent
                ),),
                FlatButton(
                  onPressed: (){
                    print("Register Pressed");
                    Navigator.of(context).pushNamed(AppRoutes.authRegister);
                  },
                  child: Text("Sign up",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),

    );

    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    final username = Material(
      elevation: 25,
      borderRadius: BorderRadius.circular(35),
      color: Colors.white,
      child: TextFormField(
        // enabled: isSubmitting,
        keyboardType: TextInputType.emailAddress,
        controller: emailController,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Colors.red,
            ),
            hintText: "Username / Email",
            hintStyle: TextStyle(
              color: Colors.grey,
            )),
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
    final password = Material(
      elevation: 25,
      borderRadius: BorderRadius.circular(35),
      color: Colors.white,
      child: TextFormField(
        // enabled: isSubmitting,
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Colors.red,
            ),
            hintText: "password",
            hintStyle: TextStyle(
              color: Colors.grey,
            )),
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );

    final fields = Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [username, Padding(padding: EdgeInsets.all(15)), password],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.purple,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                logo,
                SizedBox(
                  height: 60,
                ),
                fields,
                SizedBox(
                  height: 20,
                ),
                loginButton,
                registerForgetPass,
                // Register
              ],
            ),
          ),
        ),
      ),
    );
  }
}
