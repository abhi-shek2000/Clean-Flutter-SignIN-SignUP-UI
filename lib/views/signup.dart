import 'package:firebaseauthentication/theme/routes.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final logo = Image.network(
    "https://i.giphy.com/media/MdSd5OVojIyK8EjaqQ/giphy.webp",
    fit: BoxFit.contain,
  );
  final _formkey = GlobalKey<FormState>();
  bool isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final RegisterButton = Material(
      color: Colors.black,
      elevation: 20,
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
        onPressed: () {
          print("Register Pressed");
        },
      ),
    );

    final registerForgetPass = Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Text("Already Registered?",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.yellowAccent
                  ),),
                FlatButton(
                  onPressed: (){
                    print("Login Pressed");
                    Navigator.of(context).pushNamed(AppRoutes.authLogin);
                  },
                  child: Text("Log in",
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
            hintText: "Email",
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
            )
        ),
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
    final retypePassword = Material(
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
            hintText: "Confirm Password",
            hintStyle: TextStyle(
              color: Colors.grey,
            )
        ),
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );

    final fields = Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [username, Padding(padding: EdgeInsets.all(15)), password,Padding(padding: EdgeInsets.all(15)), retypePassword],
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
                  height: 10,
                ),
                fields,
                SizedBox(
                  height: 20,
                ),
                RegisterButton,
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
