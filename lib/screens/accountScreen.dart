import 'package:flutter/material.dart';

import '../components/appBar.dart';

class AccountScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appbarTitle: 'My Account',),
      body: Center(
        child: Text("My Account"),
      )
    );
  }
}
