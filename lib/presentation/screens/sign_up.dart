import 'package:flutter/material.dart';
import 'package:petadoption/presentation/widgets/custom_imput_field.dart';
import 'package:petadoption/presentation/widgets/custom_login_input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //text editing controller
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  //sign in method
  void signUser(TextEditingController usernameController,
      TextEditingController passwordController) {}

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Builder(builder: (context) {
            return Form(
              key: myFormKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Transform.rotate(
                    alignment: Alignment.center,
                    angle: -75,
                    child: const Icon(
                      Icons.pets,
                      size: 80.0,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'We are happy to have you here!',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const CustomInputField(
                    hintText: 'Username',
                    obscureText: false,
                    formProperty: 'username',
                    formValues: {},
                    inputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomInputField(
                    hintText: 'Email',
                    obscureText: false,
                    formProperty: 'email',
                    formValues: {},
                    inputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomInputField(
                    hintText: 'Password',
                    obscureText: false,
                    formProperty: 'password',
                    formValues: {},
                    inputType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'home');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'login'),
                          child: Text(
                            'Sign In',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "or sign up with",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[600]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                        ),
                        child: const Icon(
                          Icons.facebook,
                          size: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                        ),
                        child: const Icon(
                          Icons.g_mobiledata,
                          size: 50,
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
