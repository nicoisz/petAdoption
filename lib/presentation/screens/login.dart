import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:petadoption/presentation/widgets/custom_imput_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Nicolas',
      'phone_number': '6549841',
      'email': 'nic@google.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("input screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: "Nombre",
                  hintText: "nombre del usuario",
                  inputType: TextInputType.name,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: "Telefono",
                  hintText: "telefono del usuario",
                  inputType: TextInputType.phone,
                  formProperty: 'phone_number',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: "Correo",
                  hintText: "correo del usuario",
                  inputType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: "Password",
                  inputType: TextInputType.text,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                    hint: const Text('tipo de usuario'),
                    items: const [
                      DropdownMenuItem(value: 'admin', child: Text("Admin")),
                      DropdownMenuItem(value: 'editor', child: Text("editor")),
                      DropdownMenuItem(
                          value: 'read_only', child: Text("read-only")),
                      DropdownMenuItem(value: 'User', child: Text('user'))
                    ],
                    onChanged: (value) {
                      print(value);
                    }),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('formulario no valido');
                        return;
                      }

                      print(formValues);
                    },
                    child: const Center(
                      child: Text("Enviar"),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
