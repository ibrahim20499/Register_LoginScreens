import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register_loginscreens/Components/sign_with_googleButton.dart';
import '../Components/my_text.dart';
import '../Components/phone_form.dart';
import 'login_page.dart';
import '../Components/my_button.dart';
import '../Components/my_form.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();

  RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(children: [
          Stack(
            children: [
              Positioned(
                  left: 20,
                  top: 60,
                  child: CircleAvatar(
                      backgroundColor: Color(0xff002022),
                      radius: 20,
                      child: Center(
                          child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )))),
              Container(
                padding: EdgeInsets.only(top: 25),
                width: double.infinity,
                color: Colors.blue,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Positioned(
                    top: 0, left: 0, child: Image.asset('asset/food2.png')),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const SizedBox(height: 10.0),
                const MyText(
                  text1: 'Welcome to Fashion Daily',
                  text2: 'Register',
                  text3: 'Help',
                  height: 10.0,
                ),
                const SizedBox(
                  height: 15,
                ),
                Form(
                  key: formKey2,
                  child: MyForm(
                    isPassword: true,
                    text: 'Email',
                    type: TextInputType.emailAddress,
                    hintText: 'Eg. example@email.com',
                    controller: emailController,
                    validator: 'Password must not be empty',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                 Form(
                   key: formKey3,
                   child: PhoneForm(
                      text: 'Phone Number',
                      type: TextInputType.phone,
                      hintText: 'Eg. 01156827237', validator: 'Phone number is not registered', controller: phoneController,),
                 ),
                const SizedBox(
                  height: 15,
                ),
                Form(
                  key: formKey,
                  child: MyForm(
                    validator: 'Password must not be empty',
                    text: 'Passwoord',
                    isPassword: true,
                    type: TextInputType.visiblePassword,
                    hintText: 'Passwoord',
                    controller: passwordController,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                MyButton(
                  text: 'Register',
                  fontsize: 16,
                  buttonColor: Colors.blue,
                  textColor: Colors.white,
                  onpressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  LoginPage()),
                    );
                  },
                  height: 55.0,
                  radius: 5.0,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const <Widget>[
                    Expanded(
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Text('   Or   '),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const SingWithGoogleButton(text: 'Sign with by google'),
                const SizedBox(
                  height: 25.0,
                ),
                GuidlinesText(
                  text: 'Has any account?',
                  textButton: ' Sign in here',
                  textColor: Colors.blueGrey,
                  onClick: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  LoginPage(),
                        ));
                  }, textButtonColor: Colors.blue,
                ),
                const SizedBox(
                  height: 10,
                ),
                const PolicyText(
                  text1: 'By regestering your account,you are agree to our  ',
                  text2: 'terms and condition',
                  color2: Colors.blue,
                )
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
