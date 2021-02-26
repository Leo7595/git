import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SharedPreferences preferences;
  bool loading = false;
  bool isLogedin = false;

  @override
  void initState() {
    super.initState();
    isSignedIn();
  }

  void isSignedIn() async {
    setState(() {
      loading = true;
    });

    preferences = await SharedPreferences.getInstance();
    isLogedin = await googleSignIn.isSignedIn();

    if (isLogedin) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => new HomePage()));
    }

    setState(() {
      loading = false;
    });
  }

  Future handleSignIn() async {

    preferences = await SharedPreferences.getInstance();
    setState(() {
      loading = true;
    });
    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleUser
        .authentication;
    FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
        idToken: googleSignInAuthentication.idToken, accessToken: googleSignInAuthentication.accessToken);

 if(firebaseUser != null){
   final QuerySnapshot result = await Firestore.instance.collection("users").where("id", isEqualTo: firebaseUser.uid).getDocuments();
   final List<DocumentSnapshot> documents = result.documents;
   if(documents.length==0){
     //INSERT THE USER TO OUR COLLECTION
     Firestore.instance.collection("users").document(firebaseUser.uid).setData(
         {
           "id": firebaseUser.uid,
           "username": firebaseUser.displayName,
           "profifePicture": firebaseUser.photoUrl
         });

     await preferences.setString("id", firebaseUser.uid);
     await preferences.setString("username", firebaseUser.displayName);
     await preferences.setString("photoUrl", firebaseUser.displayName);
   }
   else{
     await preferences.setString("id", documents[0]['id']);
     await preferences.setString("username", documents[0]['username']);
     await preferences.setString("photoUrl", documents[0]['photoUrl']);
   }
   Fluttertoast.showToast(msg: "Logado com Sucesso!");
   setState(() {
     loading=false;
   });

   Navigator.pushReplacement(

       context, MaterialPageRoute(builder: (context) => HomePage()));
 }else{
   Fluttertoast.showToast(msg: "Login falhou :(");
 }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: new Text("Login", style: TextStyle(color: Colors.red.shade100),),
        elevation:  5.1,
      ),
      body: Stack(
        children: [
          Center(

            child: FlatButton(
              color: Colors.red.shade100,

              onPressed: (){

              handleSignIn();

            },
              child: Text("Sign in / Sign up With google", style: TextStyle(color: Colors.white),), ),

          ),
          Visibility(
              visible: loading ?? true,
              child: Center(

                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white.withOpacity(0.9),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                ),
              ))
        ],
      ),


    );
  }
}
