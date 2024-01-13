import 'package:flutter/material.dart';
import 'package:my_project/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        // image: DecorationImage(
        //   fit: BoxFit.cover,
        //   image: AssetImage('assets/images/login.jpg'),
        // ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.white),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.green,
                    ),
                    //Image(width: 50, height: 50, image: AssetImage('assets/images/login.jpg'),),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Please sign in to continue',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'Salsa', color: Colors.blue, fontSize: 15),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.green,
                      ),
                      hintText: 'Email',
                      fillColor: Colors.transparent,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_open_outlined,
                        color: Colors.green,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.green,
                        ),
                      ),
                      fillColor: Colors.transparent,
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 40),
                  child: Text(
                    'Forget Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Salsa',
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.pink),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200.0, 50.0),
                    backgroundColor: Colors.green.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontFamily: 'Salsa', color: Colors.blue),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
