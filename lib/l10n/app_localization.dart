import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_en.dart';
import 'app_localization_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr'),
  ];

  /// for integer number
  ///
  /// In en, this message translates to:
  /// **'{num}'**
  String numberargument(int num);

  /// for string argument
  ///
  /// In en, this message translates to:
  /// **'{string}'**
  String stringargument(String string);

  /// headline login text
  ///
  /// In en, this message translates to:
  /// **'Welcome to Crypnote'**
  String get welcome;

  /// label login text
  ///
  /// In en, this message translates to:
  /// **'a note with an encryption'**
  String get spontanious;

  /// title login form
  ///
  /// In en, this message translates to:
  /// **'Sign in with Username'**
  String get signin;

  /// label username field
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// label password field
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// label login button
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginbutton;

  /// label navigate text button register
  ///
  /// In en, this message translates to:
  /// **'Get going crypting'**
  String get createaccount;

  /// label navigate privacy policy
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy 2026'**
  String get policy;

  /// label application name
  ///
  /// In en, this message translates to:
  /// **'Crypnote'**
  String get applicationName;

  /// label application version
  ///
  /// In en, this message translates to:
  /// **'0.1'**
  String get applicationVersion;

  /// label legale and lisence
  ///
  /// In en, this message translates to:
  /// **'mt-teritory-license'**
  String get applicationLegalese;

  /// label error password validation
  ///
  /// In en, this message translates to:
  /// **'Password must contains equals or more than 8 characters'**
  String get errorPasswordValidation;

  /// label authentication successful
  ///
  /// In en, this message translates to:
  /// **'Authentication succesfull'**
  String get authenticationsuccessful;

  /// label authentication failed
  ///
  /// In en, this message translates to:
  /// **'Authentication failed'**
  String get authenticationExceptionMessage;

  /// title register form
  ///
  /// In en, this message translates to:
  /// **'Register with Username'**
  String get register;

  /// headline text for register
  ///
  /// In en, this message translates to:
  /// **'begin to create an encryption note'**
  String get registerheadline;

  /// title text for register title
  ///
  /// In en, this message translates to:
  /// **'which anyone couldn\'t see !'**
  String get registertitle;

  /// label text register button
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerbutton;

  /// label empty username validatin
  ///
  /// In en, this message translates to:
  /// **'Username cannot be left blank'**
  String get emptyUsernameValidation;

  /// label 5 chars username validation
  ///
  /// In en, this message translates to:
  /// **'Username must be at least 5 characters long'**
  String get charUsernameValidation;

  /// label empty password validation
  ///
  /// In en, this message translates to:
  /// **'Password cannot be left blank'**
  String get emptyPasswordValidation;

  /// label 8 chars password validation
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters long'**
  String get charPasswordValidation;

  /// label text navigate button register
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? Sign up now'**
  String get registerNow;

  /// label text for register successful
  ///
  /// In en, this message translates to:
  /// **'register successful'**
  String get registersuccessful;

  /// label register failed
  ///
  /// In en, this message translates to:
  /// **'Unable to register, Please try again'**
  String get registerfailed;

  /// title pin set up decryption
  ///
  /// In en, this message translates to:
  /// **'set up pin decryption !'**
  String get setuppindecryption;

  /// label button navigate create pin
  ///
  /// In en, this message translates to:
  /// **'create'**
  String get createpinbutton;

  /// label text when pin created successfuly
  ///
  /// In en, this message translates to:
  /// **'pin successful created'**
  String get pincreatesuccessful;

  /// label text when the creation of pin get fails
  ///
  /// In en, this message translates to:
  /// **'pin creation failed, required relogged in !'**
  String get pincreatedfailed;

  /// greeting with day sessions
  ///
  /// In en, this message translates to:
  /// **'good {date}'**
  String greetingday(DateTime date);

  /// hms system with day session of am/pm
  ///
  /// In en, this message translates to:
  /// **'{date}'**
  String clock(DateTime date);

  /// label username of logged in user
  ///
  /// In en, this message translates to:
  /// **'{username}'**
  String userloggedin(String username);

  /// label text dashboard
  ///
  /// In en, this message translates to:
  /// **'dashboard'**
  String get dashboard;

  /// title dashboard for total amount crypnote created
  ///
  /// In en, this message translates to:
  /// **'total'**
  String get totalDashboardTitle;

  /// label text for total amount
  ///
  /// In en, this message translates to:
  /// **'crypnote amount since the account was created'**
  String get totalDashboardLabel;

  /// title dashboard for total amount of schedule crypnote created
  ///
  /// In en, this message translates to:
  /// **'waiting'**
  String get waitingDashboardTitle;

  /// label text for schdule crypnote created
  ///
  /// In en, this message translates to:
  /// **'for opened on the elapsed time'**
  String get waitingDashboardLabel;

  /// title dashboard for total amount of deleted crypnote
  ///
  /// In en, this message translates to:
  /// **'deleted'**
  String get deletedDashboardTitle;

  /// label text for deleted crypnote created
  ///
  /// In en, this message translates to:
  /// **'recovable crypnote after deletation'**
  String get deletedDashboardLabel;

  /// title dashboard for total amount of important crypnote
  ///
  /// In en, this message translates to:
  /// **'importance'**
  String get importanceDashboardTitle;

  /// label text for important crypnote created
  ///
  /// In en, this message translates to:
  /// **'the crypnote highest aware-priority'**
  String get importanceDashboardLabel;

  /// label text to inform when create pin decryption
  ///
  /// In en, this message translates to:
  /// **'in required for decryption to achive sustainable restriction approach'**
  String get createpininformation;

  /// label text error empty pin validation
  ///
  /// In en, this message translates to:
  /// **'pin could not be empty'**
  String get erroremptypinvalidation;

  /// label text error chars pin validation
  ///
  /// In en, this message translates to:
  /// **'pin must be at least 7 characters and more'**
  String get errorcharspinvalidation;

  /// label text encryption
  ///
  /// In en, this message translates to:
  /// **'encryption'**
  String get encryption;

  /// label text navigate create crypnote
  ///
  /// In en, this message translates to:
  /// **'create'**
  String get createcrypnote;

  /// label text when decryption schedule omited
  ///
  /// In en, this message translates to:
  /// **'Decryption Schedule'**
  String get decryptionschedulenonactive;

  /// label text when decryption schedule emited
  ///
  /// In en, this message translates to:
  /// **'Decryption Schedule at {week}, {day} {month} {year} {hms}'**
  String decryptionscheduleactive(
    DateTime week,
    DateTime day,
    DateTime month,
    DateTime year,
    DateTime hms,
  );

  /// label for importance level on create crypnote
  ///
  /// In en, this message translates to:
  /// **'importance level'**
  String get importancelevel;

  /// label for create encryption button
  ///
  /// In en, this message translates to:
  /// **'encryption'**
  String get encrytionbutton;

  /// label text when create encryption successful
  ///
  /// In en, this message translates to:
  /// **'encryption successful'**
  String get encryptionsuccessful;

  /// label text when create encrption get fails
  ///
  /// In en, this message translates to:
  /// **'encryption failed, required relogged in !'**
  String get encryptionfailed;

  /// title text for deletion collection item confirmation
  ///
  /// In en, this message translates to:
  /// **'are you sure want to delete ?'**
  String get encryptioncollectionitemdeleteconfirmationtitle;

  /// label text for the collection item accepted deletation
  ///
  /// In en, this message translates to:
  /// **'yes'**
  String get encryptioncollectionitemdeletionaccepted;

  /// label when collection on empty state
  ///
  /// In en, this message translates to:
  /// **'there are no encryption have been made'**
  String get emptycollection;

  /// label text for the collection item declined deletation
  ///
  /// In en, this message translates to:
  /// **'no'**
  String get encryptioncollectionitemdeletiondeclined;

  /// title text for encryption collection item
  ///
  /// In en, this message translates to:
  /// **'latest decryption at'**
  String get encryptioncollectionitemlatestdecryptiontitle;

  /// label text for latest decryption on collection item
  ///
  /// In en, this message translates to:
  /// **'{week}, {d} {mmm} {y}'**
  String encryptioncollectionitemlatestdecryptiondatestamp(
    DateTime week,
    DateTime d,
    DateTime mmm,
    DateTime y,
  );

  /// label text for the deleted item in recycle
  ///
  /// In en, this message translates to:
  /// **'deleted at'**
  String get recycleitemdeletedtitle;

  /// label text date stamp for the deleted item in the recycle
  ///
  /// In en, this message translates to:
  /// **'{week}, {d} {mmm} {y}'**
  String recycledeleteddatestamp(
    DateTime week,
    DateTime d,
    DateTime mmm,
    DateTime y,
  );

  /// label text for tooltip destroy in recycle items
  ///
  /// In en, this message translates to:
  /// **'destroy'**
  String get recycledestroytooltip;

  /// label text for tooltip restore in recycle items
  ///
  /// In en, this message translates to:
  /// **'restore'**
  String get recyclerestoretooltip;

  /// label when recycled collection on empty state
  ///
  /// In en, this message translates to:
  /// **'there are no encryption have been recycled'**
  String get emptyrecycle;

  /// label text for profile
  ///
  /// In en, this message translates to:
  /// **'profile'**
  String get profile;

  /// title text for profile form
  ///
  /// In en, this message translates to:
  /// **'yours'**
  String get yours;

  /// label text for username on profile form
  ///
  /// In en, this message translates to:
  /// **'username'**
  String get usernameprofile;

  /// label text for firstname on profile form
  ///
  /// In en, this message translates to:
  /// **'first name'**
  String get firstnameprofile;

  /// label text for lastname on profile form
  ///
  /// In en, this message translates to:
  /// **'last name'**
  String get lastnameprofile;

  /// title text for preferences form
  ///
  /// In en, this message translates to:
  /// **'preferences'**
  String get preferences;

  /// label text for algorithm on preferences form
  ///
  /// In en, this message translates to:
  /// **'algorithm'**
  String get algorithmpreferenceslabel;

  /// label text for choosen algorithm
  ///
  /// In en, this message translates to:
  /// **'{algorithm}'**
  String algoritmpreferences(String algorithm);

  /// label text for secret key on preferences form
  ///
  /// In en, this message translates to:
  /// **'secret key'**
  String get secretkeypreferenceslabel;

  /// label for choosen secret key
  ///
  /// In en, this message translates to:
  /// **'{secretkey}'**
  String secretkeypreferences(String secretkey);

  /// label text for theme mode on preferences form
  ///
  /// In en, this message translates to:
  /// **'theme mode'**
  String get thememodepreferenceslabel;

  /// label text for choosen theme mode
  ///
  /// In en, this message translates to:
  /// **'{thememode}'**
  String thememodepreferences(String thememode);

  /// label text for modify profile on pop menu
  ///
  /// In en, this message translates to:
  /// **'modify profile'**
  String get modifyprofilepopmenu;

  /// label text for change encryptor on pop menu
  ///
  /// In en, this message translates to:
  /// **'change encryptor'**
  String get changeencryptorpopmenu;

  /// label text for about on pop menu
  ///
  /// In en, this message translates to:
  /// **'about'**
  String get aboutpopmenu;

  /// label text for logout on pop menu
  ///
  /// In en, this message translates to:
  /// **'logout'**
  String get logoutpopmenu;

  /// title text for modify profile
  ///
  /// In en, this message translates to:
  /// **'modify profile'**
  String get modifyprofiletitle;

  /// label text for new username field
  ///
  /// In en, this message translates to:
  /// **'new username'**
  String get newusername;

  /// label text for new first name field
  ///
  /// In en, this message translates to:
  /// **'new first name'**
  String get newfirstname;

  /// label text for last name field
  ///
  /// In en, this message translates to:
  /// **'new last name'**
  String get newlastname;

  /// label text for modify username information
  ///
  /// In en, this message translates to:
  /// **'there is no exceptional innovocation to modify username unless evert events ahead could be understanable mistake'**
  String get modifyusernameinformation;

  /// title text for modify encryptor
  ///
  /// In en, this message translates to:
  /// **'modify encryptor'**
  String get modifyencryptortitle;

  /// label text for algorithm selected
  ///
  /// In en, this message translates to:
  /// **'{algorithm}'**
  String modifyencryptoralgorithmselected(String algorithm);

  /// decription for the chosen algorithm
  ///
  /// In en, this message translates to:
  /// **'{algorithm}'**
  String modifyencryptoralgorithmdescriptionselected(String algorithm);

  /// label text for generate secret key information
  ///
  /// In en, this message translates to:
  /// **'for maximize the security, considering to generate new secret key !'**
  String get modifysecreykeyinformation;

  /// label text for log out confirmation
  ///
  /// In en, this message translates to:
  /// **'are you sure to logged out ?'**
  String get logoutconfirmation;

  /// label text for log out accepted confirmation
  ///
  /// In en, this message translates to:
  /// **'yes'**
  String get logoutconfirmationaccepted;

  /// label text for log out declined confirmation
  ///
  /// In en, this message translates to:
  /// **'no'**
  String get logoutconfirmationdeclined;

  /// title text for nearest decryption
  ///
  /// In en, this message translates to:
  /// **'nearest decryption'**
  String get nearestdecryption;

  /// label text for nearest decryption
  ///
  /// In en, this message translates to:
  /// **'hours remaining'**
  String get nearestdecryptionhoursremaining;

  /// label text for hours countdown
  ///
  /// In en, this message translates to:
  /// **'{time}'**
  String nearesthourscountdown(String time);

  /// No description provided for @nearestdecryptionsheduleat.
  ///
  /// In en, this message translates to:
  /// **'on {week}, {d} {MMM} {yyy}'**
  String nearestdecryptionsheduleat(
    DateTime week,
    DateTime d,
    DateTime MMM,
    DateTime yyy,
  );

  /// title text for latest decryption
  ///
  /// In en, this message translates to:
  /// **'latest decryption'**
  String get latestdecyption;

  /// label text for latest decryption date stamp
  ///
  /// In en, this message translates to:
  /// **'{week}, {d} {mmm} {yyy}'**
  String latestdecryptiondatestamp(
    DateTime week,
    DateTime d,
    DateTime mmm,
    DateTime yyy,
  );

  /// label text for time stamp
  ///
  /// In en, this message translates to:
  /// **'{hms}'**
  String latestdecryptionhours(DateTime hms);

  /// label text for latest decryption codecrypt
  ///
  /// In en, this message translates to:
  /// **'codecrypt {code}'**
  String latestdecryptioncodecrypt(String code);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
