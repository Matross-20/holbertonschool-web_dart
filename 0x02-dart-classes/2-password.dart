class Password {
    String _password = "";

    String get password => _password;
    set password(String value) => _password = value;
    bool isValid() {
        if (_password.length < 8 || _password.length > 16) {
            return false;
        }

        if (!_containsUpperCase() || !_containsLowerCase() ||!_containsNumbers()) {
            return false;
        }
        return true;
    }

    bool _containsUpperCase() {
        return _password.contains(RegExp('[A-Z]'));
    }

    bool _containsLowerCase() {
        return _password.contains(RegExp('[a-z]'));
    }

    bool _containsNumbers() {
        return _password.contains(RegExp('[0-9]'));
    }
    @override
    String toString() {
        return "Your Password is: $_password";
    }
}