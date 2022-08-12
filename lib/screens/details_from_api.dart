import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/user_provider.dart';
import '../repository/server/response/details.dart';

class UserSCreen extends StatefulWidget {
  const UserSCreen({Key? key}) : super(key: key);

  @override
  State<UserSCreen> createState() => _UserSCreenState();
}

class _UserSCreenState extends State<UserSCreen> {
  late UserProvider _userProvider;
  var _userdetails;
  @override
  void initState() {
    _userProvider = Provider.of<UserProvider>(context, listen: false);
    _userdetails = _userProvider.userDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _userdetails,
        builder: (_, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return const Text('Error');
            } else if (snapshot.hasData) {
              return Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("ID : ${snapshot.data?.data.id.toString() ?? ''}"),
                      Text('Email : ${snapshot.data?.data.email ?? ''}'),
                      Text(
                          'First Name : ${snapshot.data?.data.firstName ?? ''}'),
                      Text('Last Name : ${snapshot.data?.data.lastName ?? ''}'),
                      Image.network(snapshot.data?.data.avatar ?? ''),
                      Text('Support : ${snapshot.data?.support.url ?? ''}'),
                      Text(
                          'Support Text : ${snapshot.data?.support.text ?? ''}'),
                    ],
                  ),
                ),
              );
            } else {
              return const Text('Empty data');
            }
          } else {
            return Text('State: ${snapshot.connectionState}');
          }
        },
      ),
    );
  }
}
