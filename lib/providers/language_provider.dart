
import 'package:flutter/widgets.dart';
import 'package:localization_flutter_test/l10n/l10n.dart';


class LanguageProvider with ChangeNotifier {
  Locale selectedLocale = const Locale("en");

  void changeSelectedLocale() {
    selectedLocale =
        L10n.local.firstWhere((element) => element != selectedLocale);
    notifyListeners();
  }
}
