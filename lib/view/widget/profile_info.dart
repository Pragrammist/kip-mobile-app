import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key, required this.login, required this.email});

  final String login;
  final String email;

  Future<void> _clildProfileBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        backgroundColor: Colors.black,
        context: context,
        isScrollControlled: true,
        builder: (context) => SafeArea(
            child: SizedBox(
                height: MediaQuery.of(context).size.height - 80,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text('Enter your address'),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                        decoration: InputDecoration(hintText: 'adddrss'),
                        autofocus: true,
                      ),
                      SizedBox(height: 10),
                      Spacer(),
                      TextButton(onPressed: () => {}, child: Text("Next"))
                    ],
                  ),
                ))));
  }

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = false;

    return Container(
      width: double.infinity,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: CircleAvatar(
              backgroundColor: Colors.grey[850],
              radius: 35,
              child: const Icon(
                Icons.person,
                size: 30,
              ),
            )),
        Column(
            children: isLoggedIn
                ? [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 4, top: 4),
                        child: Text(
                          login,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 18),
                        )),
                    Text(email),
                    const Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.add),
                      title: Text("Add child profile"),
                      onTap: () => _clildProfileBottomSheet(context),
                    )
                  ]
                : [
                    SizedBox(height: 5),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () {},
                      child: Text('Вход'),
                    ),
                    SizedBox(height: 15),
                  ])
      ]),
    );
  }
}
