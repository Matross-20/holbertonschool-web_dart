class Password{
    String _password;

    Password({required String password}): _password = password;

    bool isValid() {
        if (_password.length < 8 || _password.length > 16) {
            return false;
        }

        if (!_containsUpperCase()|| !_containsLowerCase() || !_containsNumbers()) {
            return false;
        }

        return true;
    }

    bool _containsUpperCase() {
        return _password.contains(('[A-Z]'));
    }

    bool _containsLowerCase() {
        return _password.contains(('[a-z]'));
    }

    bool _containsNumbers() {
        return _password.contains(('[0-9]'));
    }

    String get password => _password;

    set password(String value) {
        _password = value;
    }

    @override
    String toString() {
        return "Your Password is: $_password"; 
    }
}