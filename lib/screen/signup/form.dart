import 'dart:io';

import 'package:artist_project/screen/widgets.dart';
import 'package:flutter/material.dart';

class SignupFormPage extends StatefulWidget {
  @override
  _SignupFormPageState createState() => _SignupFormPageState();
}

abstract class _ValueHolder {
  bool valid;
  String errorMessage;

  void validate();

  void dispose();

  void appear(BuildContext context);

  void disappear(BuildContext context);
}

class _UsernameData extends _ValueHolder {
  String username = '';
  String name = '';
  FocusNode usernameFocusNode = FocusNode();
  FocusNode nameFocusNode = FocusNode();

  @override
  void validate() {
    // TODO: username and name validation
    valid = true;
  }

  @override
  void dispose() {
    usernameFocusNode.dispose();
    nameFocusNode.dispose();
  }

  @override
  void appear(context) {
    FocusScope.of(context).requestFocus(usernameFocusNode);
  }

  @override
  void disappear(context) {
    FocusScope.of(context).unfocus();
  }
}

class _GenderData extends _ValueHolder {
  String gender;
  List<String> genders = ['Erkek', 'Kadın', 'Diğer'];
  FocusNode genderFocusNode = FocusNode();

  @override
  void validate() {
    // TODO: gender validation
    valid = true;
  }

  @override
  void dispose() {
    genderFocusNode.dispose();
  }

  @override
  void appear(context) {
    FocusScope.of(context).requestFocus(genderFocusNode);
  }

  @override
  void disappear(context) {
    FocusScope.of(context).unfocus();
  }
}

class _QualitiesData extends _ValueHolder {
  List<String> qualities = [];
  List<String> allQualities = ['Yo', 'Mama', 'So', 'Fat', 'She', 'Had', 'To', 'Split', 'This', 'To', 'Fit'];
  FocusNode qualitiesFocusNode = FocusNode();

  @override
  void validate() {
    // TODO: quality validation
    valid = true;
  }

  @override
  void dispose() {
    qualitiesFocusNode.dispose();
  }

  @override
  void appear(context) {
    FocusScope.of(context).requestFocus(qualitiesFocusNode);
  }

  @override
  void disappear(context) {
    FocusScope.of(context).unfocus();
  }
}

class _PhotoData extends _ValueHolder {
  File image;
  final picker = null;

  @override
  void validate() {
    // TODO: photo validation
    valid = true;
  }

  @override
  void dispose() {
  }

  @override
  void appear(context) {
  }

  @override
  void disappear(context) {
    FocusScope.of(context).unfocus();
  }
}

class _DetailData extends _ValueHolder {
  String bio = '';
  String location = '';
  FocusNode bioFocusNode = FocusNode();
  FocusNode locationFocusNode = FocusNode();

  @override
  void validate() {
    // TODO: bio and location validation
    valid = true;
  }

  @override
  void dispose() {
    bioFocusNode.dispose();
    locationFocusNode.dispose();
  }

  @override
  void appear(context) {
    FocusScope.of(context).requestFocus(bioFocusNode);
  }

  @override
  void disappear(context) {
    FocusScope.of(context).unfocus();
  }
}

class _SignupFormPageState extends State<SignupFormPage> {
  var _name = _UsernameData();
  var _gender = _GenderData();
  var _qualities = _QualitiesData();
  var _photo = _PhotoData();
  var _detail = _DetailData();
  List<_ValueHolder> _order;
  int _formIndex = 0;
  String _errorMessage = '';

  @override
  void initState() {
    _order = [_name, _gender, _qualities, _photo, _detail];
    super.initState();
  }

  @override
  void dispose() {
    _order.forEach((element) {
      element.dispose();
    });
    super.dispose();
  }

  void switchInputFields(int newIndex) {
    setState(() {
      _order[_formIndex].disappear(context);
      _formIndex = newIndex;
      _order[_formIndex].appear(context);
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
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        setState(() {
                          _name.username = value;
                        });
                      },
                      onSubmitted: (value) {
                        FocusScope.of(context).nextFocus();
                      },
                      focusNode: _name.usernameFocusNode,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Sanatçı Adı'),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        setState(() {
                          _name.name = value;
                        });
                      },
                      onSubmitted: (value) {
                        FocusScope.of(context).unfocus();
                      },
                      focusNode: _name.nameFocusNode,
                    ),
                  ],
                ),
              ),
              Container(
                child: DropdownButton<String>(
                  hint: Text('Bir cinsiyet seçiniz'),
                  value: _gender.gender,
                  icon: Icon(Icons.arrow_downward),
                  onChanged: (String newValue) {
                    setState(() {
                      _gender.gender = newValue;
                    });
                  },
                  items: _gender.genders
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    ListView(
                      children: _qualities.qualities.map((e) => Text(e)).toList(),
                    ),
                    DropdownButton<String>(
                      hint: Text('Bir özellik seçiniz'),
                      value: null,
                      icon: Icon(Icons.arrow_downward),
                      onChanged: (String newValue) {
                        setState(() {
                          _qualities.qualities.add(newValue);
                        });
                      },
                      items: _qualities.allQualities
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Bir resim seçiniz'),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        setState(() {
                          _detail.bio = value;
                        });
                      },
                      onSubmitted: (value) {
                        FocusScope.of(context).nextFocus();
                      },
                      focusNode: _detail.bioFocusNode,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Sanatçı Adı'),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        setState(() {
                          _detail.location = value;
                        });
                      },
                      onSubmitted: (value) {
                        FocusScope.of(context).unfocus();
                      },
                      focusNode: _detail.locationFocusNode,
                    ),
                  ],
                ),
              ),
            ],
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
                      // TODO: submit
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
