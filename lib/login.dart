import 'package:flutter/material.dart';
import 'home.dart';
class Login extends StatefulWidget {
  @override
  State createState() => LoginState();
 
}

class LoginState extends State<Login> {
 
  String username;
  String password;
  String pesan = " ";

   login() {
    if(username == "sekar" && password == "sekar" || username == "sekar123" && password == "sekar123"){
//untuk berpindah halaman jika username dan password benar
var route = new MaterialPageRoute(
                        builder: (BuildContext) =>
                        new Home(username : username),
                      );
                      Navigator.of(context).push(route);

    //Navigator.pushReplacementNamed(context, '/home');
    }else{
      pesan = "username atau password salah";
    }
    
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Center(child: Text("Login"))),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          username = txt;
                        });
                      },
                      keyboardType: TextInputType.text,
                      maxLength: 20,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Username",
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          hintText: 'Username'),
                    ),
                  ),
                  Container(
                    child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          password = txt;
                        });
                      },
                      keyboardType: TextInputType.text,
                      maxLength: 10,
                      obscureText: true, //untuk inputan password
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Password",
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          hintText: 'Password'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                          color: Colors.lightBlueAccent,
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: login),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      Text(
                        "${pesan}",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
