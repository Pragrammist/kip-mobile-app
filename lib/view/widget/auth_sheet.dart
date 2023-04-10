import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kip_mobile/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

class AuthSheet extends StatefulWidget {
  const AuthSheet({super.key});

  @override
  State<AuthSheet> createState() => _AuthSheet();
}

class _AuthSheet extends State<AuthSheet> {
  Widget _dividerWithText() {
    return Row(children: <Widget>[
      Expanded(child: Divider(color: Colors.white)),
      SizedBox(
        width: 10,
      ),
      Text("OR"),
      SizedBox(
        width: 10,
      ),
      Expanded(
          child: Divider(
        color: Colors.white,
      )),
    ]);
  }

  Widget _ovalButton() {
    return ClipOval(
      child: Material(
        color: Colors.blue, // Button color
        child: InkWell(
          onTap: () {},
          child: SizedBox(width: 38, height: 38, child: Icon(Icons.menu)),
        ),
      ),
    );
  }

  Widget _steppedForm(int index) {
    switch (index) {
      case 0:
        return const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email address',
            ));
        break;

      case 1:
        return const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Code',
            ));

      case 2:
        return Column(
          children: [
            const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                )),
            const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm password',
                )),
          ],
        );
        break;

      default:
        return Container();
    }
  }

  Future<void> _loginSheet(BuildContext context) {
    int formIndex = 0;

    void _increaseFormIndex() {
      setState(() {
        formIndex += 1;
      });
    }

    final authSheet = Provider.of<AuthViewModel>(context, listen: false);

    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      useRootNavigator: true,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) => StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) => Container(
              height: MediaQuery.of(context).size.height * 0.70,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(25.0),
                  topRight: const Radius.circular(25.0),
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sign in"),
                      SizedBox(
                        height: 15,
                      ),
                      _steppedForm(formIndex),
                      SizedBox(
                        height: 30,
                      ),
                      Row(children: [
                        Expanded(
                            child: ElevatedButton(
                          onPressed: authSheet.sendEmail,
                          child: Text("Continue"),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(vertical: 16))),
                        )),
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      _dividerWithText(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [_ovalButton(), _ovalButton(), _ovalButton()],
                      )
                    ],
                  ))))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => _loginSheet(context),
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ));
  }
}
