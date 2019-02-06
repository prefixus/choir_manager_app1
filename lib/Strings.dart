abstract class Strings {
  String homeScreen = 'home_screen';
  String settingsScreen = 'settings_screen ';
  String accountScreen = 'account_screen';

  factory Strings(var lang) {
    if (lang == 'polish') {
      return new Strings_PL();
    } else if (lang == 'english') {
      return new Strings_EN();
    } else
      throw FormatException('Language non existent!');
  }
}

class Strings_PL implements Strings {
  @override
  String accountScreen = 'Konto użytkownika';

  @override
  String homeScreen = 'Ekran główny';

  @override
  String settingsScreen = 'Ustawienia';
}

class Strings_EN implements Strings {
  @override
  String accountScreen = 'User Account';

  @override
  String homeScreen = 'Home Screen';

  @override
  String settingsScreen = 'Settings';
}
