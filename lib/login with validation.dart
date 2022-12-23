
import 'package:flutter/material.dart';
import 'package:my_applications/listpage.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State {
  var formkey = GlobalKey<FormState>();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: const Text("LoginForm"),
          elevation: 10,
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Center(
                child: Text(
              "LoginPage",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.account_box_sharp),
                    hintText: "Enter User Name",
                    labelText: 'UserName',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.next,
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('@')) {
                    return 'Enter a valid UserName';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.visibility_off),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(
                          showpass == true
                              ? Icons.visibility_off
                              : Icons.visibility,
                        )),
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                textInputAction: TextInputAction.done,
                validator: (Password) {
                  if (Password!.isEmpty || Password.length<6) {
                    return "Enter a valid Password, length should be greater than 6";
                  }else{
                    return null;
                  }
                    },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => listpage()));
                    }
                  },
                  child: const Text("Login"),),
            ),
          ],
        ),
      ),
    );
  }
}
