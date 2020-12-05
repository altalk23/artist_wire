import 'package:artist_project/screen/widgets.dart';
import 'package:flutter/material.dart';

class SignupFormPage extends StatefulWidget {
  @override
  _SignupFormPageState createState() => _SignupFormPageState();
}

class UsernamePage extends StatefulWidget {
  UsernamePage({Key key}) : super(key: key);

  @override
  _UsernamePageState createState() => _UsernamePageState();
}

class _UsernamePageState extends State<UsernamePage> {
  bool valid;
  String errorMessage;
  String _username = '';
  FocusNode _usernameFocusNode = FocusNode();

  void validate() {
    //TODO: username validation
    valid = true;
  }

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    super.dispose();
  }

  void appear(context) {
    FocusScope.of(context).requestFocus(_usernameFocusNode);
  }

  void disappear(context) {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
      keyboardType: TextInputType.text,

      // Step 3 - Fetch User Input
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },

      // Step 4 - Validate User Input
      onSubmitted: (value) {
        _validateEmail();

        // Step 2 - Switch Between TextFields
        if (_emailValid) {
          _switchInputField(_formIndex + 1);
        }
      },

      // Step 2 - Switch Between TextFields
      focusNode: _emailFocusNode,
    );
  }
}



class _SignupFormPageState extends State<SignupFormPage> {
  var _username = GlobalKey();
  var _name = _ValueHolder();
  var _surname = _ValueHolder();
  List<_ValueHolder> _order;
  int _formIndex = 0;
  String _errorMessage = '';

  @override
  void initState() {
    _usernameKey.
    _order = [_username, _name, _surname];
    super.initState();
  }

  void switchInputFields(int newIndex) {
    setState(() {
      _formIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IndexedStack(
            index: _formIndex,
            children: _order.map((e) => e.widget(context)),
          ),
          Text(_errorMessage),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _formIndex == 0
                  ? Container()
                  : FlatButton(
                      onPressed: () {
                        switchInputFields(_formIndex - 1);
                      },
                      child: Text('Back'),
                    ),
              FlatButton(
                onPressed: () {
                  _order[_formIndex].validate();
                  setState(() {
                    _errorMessage = _order[_formIndex].errorMessage;
                  });
                  if (_order[_formIndex].valid) {
                    if (_formIndex == _order.length - 1) {
                      // submit
                    }
                    switchInputFields(_formIndex + 1);
                  }
                },
                child: Text('Next'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
