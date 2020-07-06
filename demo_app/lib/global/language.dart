import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class Language {

  final Locale locale;

  Language(this.locale);

  static Language of(BuildContext context) {
    return Localizations.of<Language>(context, Language);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'bg': {
      'login_ttl': 'Вход',
      'login_btn': 'Влез',
      'login_name_hint': 'Име...',
      'login_pass_hint': 'Парола...',
      'thank_you' : 'Благодаря!'
    },
    'en': {
      'login_ttl': 'Login',
      'login_btn': 'Login',
      'login_name_hint': 'Name...',
      'login_pass_hint': 'Password...',
      'thank_you' : 'Thank You!'
    }
  };

  String get loginTtl {return _localizedValues[locale.languageCode]['login_ttl'];}
  String get loginBtn {return _localizedValues[locale.languageCode]['login_btn'];}
  String get loginNameHint {return _localizedValues[locale.languageCode]['login_name_hint'];}
  String get loginPassHint {return _localizedValues[locale.languageCode]['login_pass_hint'];}
  String get thankYou {return _localizedValues[locale.languageCode]['thank_you'];}

  String get lang { return locale.languageCode; }

}

class LanguageLocalizationsDelegate extends LocalizationsDelegate<Language> {
  const LanguageLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) => ['en', 'da'].contains(locale.languageCode);
  @override
  Future<Language> load(Locale locale) {
    return SynchronousFuture<Language>(Language(locale));
  }
  @override
  bool shouldReload(LanguageLocalizationsDelegate old) => false;
}