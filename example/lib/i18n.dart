import 'dart:async';

import 'package:flutter/material.dart';

/// This class is generated by flappy_translator package
/// You should never change something directly in this file but, instead, generate new file when needed with the package
class I18n {
  String get appTitle => _getText("appTitle");

String get subtitle => _getText("subtitle");

String description({String var1, }) {
      String text = _getText("description");
              if (var1 != null) {
          text = text.replaceAll("%1\$s", var1);
        }
              return text;
      
      }
      String littleTest({int age, }) {
      String text = _getText("littleTest");
              if (age != null) {
          text = text.replaceAll("%age\$d", age.toString());
        }
              return text;
      
      }
      

  I18n(Locale locale) {
    this._locale = locale;
     _localizedValues = null;
  }

  Locale _locale;

  static Map<String, String> _localizedValues;

        
static Map<String, String> _frValues = {
              "appTitle": "Ma super application",
                "subtitle": "Un sous titre",
                "description": "Un texte avec une variable : %1\$s",
                "littleTest": "Voici, pour l'exemple, \"un test\" avec la variable %age\$d",
        };
      
static Map<String, String> _enValues = {
              "appTitle": "My awesome application",
                "subtitle": "A subtitle",
                "description": "A text with a variable : %1\$s",
                "littleTest": "Here is, for the example, \"a test\" with variable %age\$d",
        };
      
static Map<String, String> _esValues = {
              "appTitle": "Mi gran application",
                "subtitle": "Un subtitulò",
                "description": "Un texto con una variable : %1\$s",
                "littleTest": "Aqui esta, por ejemplo, \"una prueba\" con la variable %age\$d",
        };
      
static Map<String, String> _de_CHValues = {
              "appTitle": " Meine super Applikation",
                "subtitle": " Ein Untertitle",
                "description": "Ein Text mit einer Variablen: %1\$s",
                "littleTest": "Hier ist, zum Beispiel, \"ein Test\" mit der Variablen %age\$d",
        };
    static Map<String, Map<String, String>> _allValues = {
            "fr": _frValues,
              "en": _enValues,
              "es": _esValues,
              "de_CH": _de_CHValues,
      };

  static I18n of(BuildContext context) {
    return Localizations.of<I18n>(context, I18n);
  }

  String _getText(String key) {
    return _localizedValues[key] ?? '** $key not found';
  }

  static Future<I18n> load(Locale locale) async {
    I18n translations = I18n(locale);
    _localizedValues = _allValues[locale.toString()];
    return translations;
  }

  get currentLanguage => _locale.languageCode;
}

class I18nDelegate extends LocalizationsDelegate<I18n> {
  const I18nDelegate();

  static final Set<Locale> supportedLocals = { Locale('fr'),Locale('en'),Locale('es'),Locale('de', 'CH'), };
      
      @override
      bool isSupported(Locale locale) => supportedLocals.contains(locale);

  @override
  Future<I18n> load(Locale locale) => I18n.load(locale);

  @override
  bool shouldReload(I18nDelegate old) => false;
}

