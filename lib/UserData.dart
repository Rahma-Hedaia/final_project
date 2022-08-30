class UserData{
  String _name;
  String _email;
  String _phone;
  String _password;

  UserData(this._name, this._email, this._phone, this._password);

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get phone => _phone;

  set phone(String value) {
    _phone = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  @override
  String toString() {
    return 'UserData{_name: $_name, _email: $_email, _phone: $_phone, _password: $_password}';
  }
 }

