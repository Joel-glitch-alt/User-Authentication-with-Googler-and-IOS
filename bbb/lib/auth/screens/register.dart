import 'package:bbb/auth/components/btn.dart';
import 'package:bbb/auth/components/image_tile.dart';
import 'package:bbb/auth/components/square_tile.dart';
import 'package:bbb/auth/components/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterPager extends StatelessWidget {
  final Function()? onTap;
  RegisterPager({super.key, required this.onTap});
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                const SizedBox(
                  height: 50,
                ),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 20,
                ),

                //Welcome back
                Text(
                  "Create your account withn us",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),

                const SizedBox(
                  height: 25,
                ),

                //username text field
                const MyTextField(
                  hintText: 'User name',
                  obscureText: false,
                ),

                const SizedBox(
                  height: 10,
                ),
                const MyTextField(
                  hintText: 'First Name',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyTextField(
                  hintText: 'Last Name',
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),
                //Password text field
                const MyTextField(
                  hintText: 'password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 5,
                ),
                const MyTextField(
                  hintText: 'Confirm password',
                  obscureText: true,
                ),

                //forgot password
                // const Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Text('forgot password?'),
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),

                //sign in button
                MyButton(
                  onTap: signUserIn,
                ),
                const SizedBox(
                  height: 10,
                ),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or Continue with ',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      //
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                //goodle + apple sign in
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image.asset(
                    //   'lib/images/google.png',
                    //   height: 72,
                    // )
                    SquareTile(
                      ImagePath:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ75Q9EvClA_AXpsxkvrXrLRQS6iLAI-Y_MV9FKjZDSEw&s',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SquareTile(
                      ImagePath:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOQmnV_JcXPjgIId3UfkUgBlEkvaZPlcTtqD0qpWXvQA&s',
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),

                //Not a member? register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already having account?"),
                    GestureDetector(
                      onTap: onTap,
                      child: const Text(
                        " Login",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
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
