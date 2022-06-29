import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register_loginscreens/Components/sign_with_googleButton.dart';
import 'package:register_loginscreens/Screens/registerPage.dart';
import '../Components/my_button.dart';
import '../Components/my_form.dart';
import '../Components/my_text.dart';
import '../Components/phone_form.dart';

class LoginPage extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
   LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.blue,
            height: MediaQuery.of(context).size.height * 0.35,
            child: Positioned(
                top: 0, left: 0, child: Image.asset('asset/food2.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const SizedBox(height: 10.0),
                const MyText(
                  text1: 'Welcome to Fashion Daily',
                  text2: 'Sign in',
                  text3: 'Help',
                  height: 15.0,
                ),
                const SizedBox(
                  height: 25,
                ),
                //const MyForm(text: 'Phone Number', type: TextInputType.emailAddress, hintText: 'Eg. 01156827237'),
                 Form(
                   key: formKey,
                   child: PhoneForm(
                      text: 'Phone Number',
                      type: TextInputType.phone,
                      hintText: 'Eg. 01156827237', validator: 'Phone number is not registered', controller: phoneController,),
                 ),
                const SizedBox(
                  height: 25,
                ),
                MyButton(
                  text: 'Sign in',
                  onpressed: () {},
                  height: 55.0,
                  radius: 5.0,
                  fontsize: 16,
                  buttonColor: Colors.blue,
                  textColor: Colors.white,
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
                const SingWithGoogleButton(
                  text: 'Sign with by google',
                ),
                const SizedBox(
                  height: 30.0,
                ),
                GuidlinesText(
                  text: "Doesn't Has any account?",
                  textButton: ' Register here',
                  textColor: Colors.blueGrey,
                  onClick: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  }, textButtonColor: Colors.blue,
                ),
                const SizedBox(
                  height: 25,
                ),
                const PolicyText(
                  text1: 'Use the application according to policy rules. Any',
                  text2: ' kinds of violations will be subject to sanctions',
                  color2: Colors.grey,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
