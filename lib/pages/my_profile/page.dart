import 'package:flutter/material.dart';
import 'package:food_app/pages/my_profile/widgets/historic.dart';
import 'package:food_app/pages/my_profile/widgets/payments.dart';
import 'package:food_app/pages/my_profile/widgets/user_details.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              UserDetails(),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text("Detalhes da conta")),
                    Payments(),
                    HistoryTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
