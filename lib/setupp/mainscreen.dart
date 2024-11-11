import 'package:flutter/material.dart';
import 'package:orivios_company_demo/setupp/dbmanager.dart';
import 'package:orivios_company_demo/setupp/user.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    late List<Ussers> userList;
    void Call(String no) {
      final Uri callLaunchUri = Uri.parse("tel:${no}");
      launchUrl(callLaunchUri);
    }

    DbManager dbManager = DbManager();
    return Scaffold(
      body: FutureBuilder(
        future: dbManager.getStudentList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            userList = snapshot.data as List<Ussers>;
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  // ignore: unnecessary_string_interpolations
                  title: Text(
                    "${snapshot.data![index].username}",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text("${snapshot.data![index].email}"),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Details"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "username : ${snapshot.data![index].username}"),
                                Text("email : ${snapshot.data![index].email}"),
                                Text(
                                    "password : ${snapshot.data![index].password}"),
                                Text(
                                    "Mobile Phone : ${snapshot.data![index].phone}"),
                              ],
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Call("${snapshot.data![index].phone}");
                                  },
                                  child: Icon(Icons.phone)),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK')),
                            ],
                          );
                        });
                  },
                );
              },
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
