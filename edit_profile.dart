import 'package:flutter/material.dart';
import 'package:first/Views/singup.dart';
import 'package:first/Widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:first/services/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/services/database.dart';
import 'package:first/Views/chatRoomsScreen.dart';





class EditProfile extends StatefulWidget {
  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme
                .of(context)
                .scaffoldBackgroundColor,
            elevation: 1,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ]
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16, top: 25, right: 16),
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
          },
            child: ListView(
              children: [
                Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width:130,
                        height:130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor
                            ),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2, blurRadius: 10,
                                  color: Colors.white.withOpacity(0.1),
                                  offset: Offset(0,10)
                              )
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://picsum.photos/250?image=9")
                            )

                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color: Theme
                                    .of(context)
                                    .scaffoldBackgroundColor,
                              ),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                buildTextField("Name", "Jackson Feinstein", false), //parameters for buildtext
                buildTextField("Username", "Huncho", false),
                buildTextField("Password", "*******", true), // password build is true for obscure
                buildTextField("Bio", "Struggling with this project", false),



              ],
            ),
          ),
        )
    );
  }

  Widget buildTextField( String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: TextField(
        obscureText: isPasswordTextField, //checks bool in buildtext
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 3),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold,
            color: Colors.white,
          )
        ),
      ),
    );
  }
}

