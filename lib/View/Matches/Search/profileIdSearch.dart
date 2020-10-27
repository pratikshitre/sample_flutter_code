import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/CSS/Colors.dart';

class ProfilIdSearch extends StatefulWidget {
  @override
  _ProfilIdSearch createState() => new _ProfilIdSearch();
}

class _ProfilIdSearch extends State<ProfilIdSearch>
    with WidgetsBindingObserver {
  String _profileId;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildProfileId() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Profile Id'),
      // maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Profile Id is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _profileId = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: body_background_color,
      child: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildProfileId(),
              SizedBox(height: 50),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: RaisedButton(
                  color: login_header_color,
                  child: Center(
                    child: Text(
                      'SEARCH',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }
                    _formKey.currentState.save();
                    print(_profileId);
                    Navigator.pushNamed(
                      context,
                      "/ProfilFullView",
                    );
                    //Send to API
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
