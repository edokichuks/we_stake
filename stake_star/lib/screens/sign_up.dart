import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stake_star/components/bottom_button.dart';
import 'package:stake_star/screens/login_screen.dart';
import 'package:stake_star/screens/policy_screen.dart';
import 'package:stake_star/screens/profile_screen.dart';

import 'search_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration:const BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage('assets/images/match enterance.jpg'),
          //   fit: BoxFit.cover,
          // ),
          color: Colors.blue,
        ),
        constraints: BoxConstraints.expand(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        //  padding: EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/cup1.png',
                  ),
                  radius: 50,
                ),
                const SizedBox(
                  height: 20,
                ),
                //   DropdownButton(items: null),
             const   Text(
                  'SIGN UP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.amber,
                  ),
                ),
                const   SizedBox(
                  height: 20,
                ),
                //Todo: extract this widget
                inputWidget(
                    private: false, icon: Icons.person, label: 'User Name'),
                inputWidget(private: false, icon: Icons.email, label: 'Email'),
                inputWidget(
                    private: true, icon: Icons.vpn_key, label: 'Password'),
                inputWidget(
                    private: false, icon: Icons.call, label: 'Phone Number'),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.green,
                        fillColor: MaterialStateProperty.all(Colors.white),
                        overlayColor: MaterialStateProperty.all(Colors.green),
                        value: isChecked,
                        onChanged: (val) {
                          setState(() {
                            isChecked = !isChecked;
                            print(val);
                          });
                        },
                      ),
                      //     Checkbox(value: null, onChanged: (val) {}),
                     const Text(
                        'Terms of Service',
                        style: TextStyle(
                          color: Colors.amber,
                        ),
                      ), //
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (_) {
                                return PolicyScreen();
                              },
                            ));
                          });
                        },
                        child: const Text(
                          'View Policies',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ), // age enough to bet
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                BottomButton(
                    btnName: 'SIGN UP',
                    onTap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (_) {
                            return SearchScreen();
                          },
                        ));
                      });
                    }),
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      RichText(
                          text: TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                          color: Colors.amber,
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return LoginScreen();
                              },
                            ));
                          });
                        },
                        splashColor: Colors.green,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: Colors.transparent,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class inputWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool private;
  inputWidget({required this.private, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 12),
      child: TextFormField(
        obscureText: private,

        //todo: add local validation
        //  autofocus: true, // what does this do
        decoration: InputDecoration(
          //border: InputBorder.none,
          hintText: label,
          prefixIcon: Icon(
            icon,
            // color: Colors.green,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
          ),
          //ends here
//todo; add the focusBorder
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            borderSide: BorderSide(
              color: Colors.white70,
              width: 2.0,
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          focusColor: Colors.green,
          enabled: true,
        ),
      ),
    );
  }
}
