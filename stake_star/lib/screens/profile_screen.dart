import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stake_star/components/bottom_button.dart';
import 'package:stake_star/screens/cashout_screen.dart';
import 'package:stake_star/screens/deposit_screen.dart';
import 'package:stake_star/screens/login_screen.dart';
import 'package:stake_star/screens/todo_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Color(0xff27326e),
        title: Text(
          'Personal Center',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black87,
                ),
                height: 350,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    authorCard(),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '8,277.85',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Available Balance',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '4000.00',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Staked Amount',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Divider(
                      // thickness: .5,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DepositWithdrawalBtn(
                          textTitle: 'Deposit',
                          ontap: () {
                            setState(() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return DepositScreen();
                              }));
                            });
                          },
                        ),
                        DepositWithdrawalBtn(
                          textTitle: 'Cashout',
                          ontap: () {
                            setState(() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return CashoutScreen();
                              }));
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 400,
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                      title: Text('My Details'),
                      trailing: Icon(Icons.arrow_right_alt),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return TodoScreen();
                          }));
                        });
                      },
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return TodoScreen();
                          }));
                        });
                      },
                      leading: Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.green,
                      ),
                      title: Text('Income Management'),
                      trailing: Icon(Icons.arrow_right_alt),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return TodoScreen();
                          }));
                        });
                      },
                      leading: Icon(
                        Icons.library_books,
                        color: Colors.green,
                      ),
                      title: Text('Transactions History'),
                      trailing: Icon(Icons.arrow_right_alt),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return TodoScreen();
                          }));
                        });
                      },
                      leading: Icon(
                        Icons.headset_mic,
                        color: Colors.green,
                      ),
                      title: Text('Online Customer Care'),
                      trailing: Icon(Icons.arrow_right_alt),
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return TodoScreen();
                          }));
                        });
                      },
                      leading: Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.green,
                      ),
                      title: Text('About StakeStar'),
                      trailing: Icon(Icons.arrow_right_alt),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: BottomButton(
                    btnName: 'LOGOUT',
                    onTap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (_) {
                            return LoginScreen();
                          },
                        ));
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DepositWithdrawalBtn extends StatelessWidget {
  final String textTitle;
  final ontap;
  DepositWithdrawalBtn({required this.textTitle, required this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 45,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(colors: [
            Colors.green,
            Colors.blue,
            //Colors.green,
          ]),
        ),
        child: Center(
          child: Text(
            textTitle,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class authorCard extends StatelessWidget {
  const authorCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/circular logo.jpg'),
          radius: 25,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Chuksco',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
