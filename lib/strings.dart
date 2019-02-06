abstract class Strings {
  String homeScreen = 'home_screen';
  String settingsScreen = 'settings_screen ';
  String accountScreen = 'account_screen';

  factory Strings(var lang) {
    if (lang == 'polish') {
      return new StringsPL();
    } else if (lang == 'english') {
      return new StringsEN();
    } else
      throw FormatException('Language non existent!');
  }
}

class StringsPL implements Strings {
  @override
  String accountScreen = 'Konto użytkownika';

  @override
  String homeScreen = 'Ekran główny';

  @override
  String settingsScreen = 'Ustawienia';
}

class StringsEN implements Strings {
  @override
  String accountScreen = 'User Account';

  @override
  String homeScreen = 'Home Screen';

  @override
  String settingsScreen = 'Settings';
}
