// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String numberargument(int num) {
    return '$num';
  }

  @override
  String stringargument(String string) {
    return '$string';
  }

  @override
  String get welcome => 'Welcome to Crypnote';

  @override
  String get spontanious => 'a note with an encryption';

  @override
  String get signin => 'Sign in with Username';

  @override
  String get username => 'Username';

  @override
  String get password => 'Password';

  @override
  String get loginbutton => 'Login';

  @override
  String get createaccount => 'Get going crypting';

  @override
  String get policy => 'Privacy Policy 2026';

  @override
  String get applicationName => 'Crypnote';

  @override
  String get applicationVersion => '0.1';

  @override
  String get applicationLegalese => 'mt-teritory-license';

  @override
  String get errorPasswordValidation =>
      'Password must contains equals or more than 8 characters';

  @override
  String get authenticationsuccessful => 'Authentication succesfull';

  @override
  String get authenticationExceptionMessage => 'Authentication failed';

  @override
  String get register => 'Register with Username';

  @override
  String get registerheadline => 'begin to create an encryption note';

  @override
  String get registertitle => 'which anyone couldn\'t see !';

  @override
  String get registerbutton => 'Register';

  @override
  String get emptyUsernameValidation => 'Username cannot be left blank';

  @override
  String get charUsernameValidation =>
      'Username must be at least 5 characters long';

  @override
  String get emptyPasswordValidation => 'Password cannot be left blank';

  @override
  String get charPasswordValidation =>
      'Password must be at least 8 characters long';

  @override
  String get registerNow => 'Don\'t have an account? Sign up now';

  @override
  String get registersuccessful => 'register successful';

  @override
  String get registerfailed => 'Unable to register, Please try again';

  @override
  String get setuppindecryption => 'set up pin decryption !';

  @override
  String get createpinbutton => 'create';

  @override
  String get pincreatesuccessful => 'pin successful created';

  @override
  String get pincreatedfailed => 'pin creation failed, required relogged in !';

  @override
  String greetingday(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.Hms(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'good $dateString';
  }

  @override
  String clock(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.Hms(localeName);
    final String dateString = dateDateFormat.format(date);

    return '$dateString';
  }

  @override
  String userloggedin(String username) {
    return '$username';
  }

  @override
  String get dashboard => 'dashboard';

  @override
  String get totalDashboardTitle => 'total';

  @override
  String get totalDashboardLabel =>
      'crypnote amount since the account was created';

  @override
  String get waitingDashboardTitle => 'waiting';

  @override
  String get waitingDashboardLabel => 'for opened on the elapsed time';

  @override
  String get deletedDashboardTitle => 'deleted';

  @override
  String get deletedDashboardLabel => 'recovable crypnote after deletation';

  @override
  String get importanceDashboardTitle => 'importance';

  @override
  String get importanceDashboardLabel => 'the crypnote highest aware-priority';

  @override
  String get createpininformation =>
      'in required for decryption to achive sustainable restriction approach';

  @override
  String get erroremptypinvalidation => 'pin could not be empty';

  @override
  String get errorcharspinvalidation =>
      'pin must be at least 7 characters and more';

  @override
  String get encryption => 'encryption';

  @override
  String get createcrypnote => 'create';

  @override
  String get decryptionschedulenonactive => 'Decryption Schedule';

  @override
  String decryptionscheduleactive(
    DateTime week,
    DateTime day,
    DateTime month,
    DateTime year,
    DateTime hms,
  ) {
    final intl.DateFormat weekDateFormat = intl.DateFormat.EEEE(localeName);
    final String weekString = weekDateFormat.format(week);
    final intl.DateFormat dayDateFormat = intl.DateFormat.d(localeName);
    final String dayString = dayDateFormat.format(day);
    final intl.DateFormat monthDateFormat = intl.DateFormat.MMM(localeName);
    final String monthString = monthDateFormat.format(month);
    final intl.DateFormat yearDateFormat = intl.DateFormat.y(localeName);
    final String yearString = yearDateFormat.format(year);
    final intl.DateFormat hmsDateFormat = intl.DateFormat.Hms(localeName);
    final String hmsString = hmsDateFormat.format(hms);

    return 'Decryption Schedule at $weekString, $dayString $monthString $yearString $hmsString';
  }

  @override
  String get importancelevel => 'importance level';

  @override
  String get encrytionbutton => 'encryption';

  @override
  String get encryptionsuccessful => 'encryption successful';

  @override
  String get encryptionfailed => 'encryption failed, required relogged in !';

  @override
  String get encryptioncollectionitemdeleteconfirmationtitle =>
      'are you sure want to delete ?';

  @override
  String get encryptioncollectionitemdeletionaccepted => 'yes';

  @override
  String get emptycollection => 'there are no encryption have been made';

  @override
  String get encryptioncollectionitemdeletiondeclined => 'no';

  @override
  String get encryptioncollectionitemlatestdecryptiontitle =>
      'latest decryption at';

  @override
  String encryptioncollectionitemlatestdecryptiondatestamp(
    DateTime week,
    DateTime d,
    DateTime mmm,
    DateTime y,
  ) {
    final intl.DateFormat weekDateFormat = intl.DateFormat.EEEE(localeName);
    final String weekString = weekDateFormat.format(week);
    final intl.DateFormat dDateFormat = intl.DateFormat.d(localeName);
    final String dString = dDateFormat.format(d);
    final intl.DateFormat mmmDateFormat = intl.DateFormat.MMM(localeName);
    final String mmmString = mmmDateFormat.format(mmm);
    final intl.DateFormat yDateFormat = intl.DateFormat.y(localeName);
    final String yString = yDateFormat.format(y);

    return '$weekString, $dString $mmmString $yString';
  }

  @override
  String get recycleitemdeletedtitle => 'deleted at';

  @override
  String recycledeleteddatestamp(
    DateTime week,
    DateTime d,
    DateTime mmm,
    DateTime y,
  ) {
    final intl.DateFormat weekDateFormat = intl.DateFormat.EEEE(localeName);
    final String weekString = weekDateFormat.format(week);
    final intl.DateFormat dDateFormat = intl.DateFormat.d(localeName);
    final String dString = dDateFormat.format(d);
    final intl.DateFormat mmmDateFormat = intl.DateFormat.MMM(localeName);
    final String mmmString = mmmDateFormat.format(mmm);
    final intl.DateFormat yDateFormat = intl.DateFormat.y(localeName);
    final String yString = yDateFormat.format(y);

    return '$weekString, $dString $mmmString $yString';
  }

  @override
  String get recycledestroytooltip => 'destroy';

  @override
  String get recyclerestoretooltip => 'restore';

  @override
  String get emptyrecycle => 'there are no encryption have been recycled';

  @override
  String get profile => 'profile';

  @override
  String get yours => 'yours';

  @override
  String get usernameprofile => 'username';

  @override
  String get firstnameprofile => 'first name';

  @override
  String get lastnameprofile => 'last name';

  @override
  String get preferences => 'preferences';

  @override
  String get algorithmpreferenceslabel => 'algorithm';

  @override
  String algoritmpreferences(String algorithm) {
    return '$algorithm';
  }

  @override
  String get secretkeypreferenceslabel => 'secret key';

  @override
  String secretkeypreferences(String secretkey) {
    return '$secretkey';
  }

  @override
  String get thememodepreferenceslabel => 'theme mode';

  @override
  String thememodepreferences(String thememode) {
    return '$thememode';
  }

  @override
  String get modifyprofilepopmenu => 'modify profile';

  @override
  String get changeencryptorpopmenu => 'change encryptor';

  @override
  String get aboutpopmenu => 'about';

  @override
  String get logoutpopmenu => 'logout';

  @override
  String get modifyprofiletitle => 'modify profile';

  @override
  String get newusername => 'new username';

  @override
  String get newfirstname => 'new first name';

  @override
  String get newlastname => 'new last name';

  @override
  String get modifyusernameinformation =>
      'there is no exceptional innovocation to modify username unless evert events ahead could be understanable mistake';

  @override
  String get modifyencryptortitle => 'modify encryptor';

  @override
  String modifyencryptoralgorithmselected(String algorithm) {
    return '$algorithm';
  }

  @override
  String modifyencryptoralgorithmdescriptionselected(String algorithm) {
    return '$algorithm';
  }

  @override
  String get modifysecreykeyinformation =>
      'for maximize the security, considering to generate new secret key !';

  @override
  String get logoutconfirmation => 'are you sure to logged out ?';

  @override
  String get logoutconfirmationaccepted => 'yes';

  @override
  String get logoutconfirmationdeclined => 'no';

  @override
  String get nearestdecryption => 'nearest decryption';

  @override
  String get nearestdecryptionhoursremaining => 'hours remaining';

  @override
  String nearesthourscountdown(String time) {
    return '$time';
  }

  @override
  String nearestdecryptionsheduleat(
    DateTime week,
    DateTime d,
    DateTime MMM,
    DateTime yyy,
  ) {
    final intl.DateFormat weekDateFormat = intl.DateFormat.EEEE(localeName);
    final String weekString = weekDateFormat.format(week);
    final intl.DateFormat dDateFormat = intl.DateFormat.d(localeName);
    final String dString = dDateFormat.format(d);
    final intl.DateFormat MMMDateFormat = intl.DateFormat.MMM(localeName);
    final String MMMString = MMMDateFormat.format(MMM);
    final intl.DateFormat yyyDateFormat = intl.DateFormat.y(localeName);
    final String yyyString = yyyDateFormat.format(yyy);

    return 'on $weekString, $dString $MMMString $yyyString';
  }

  @override
  String get latestdecyption => 'latest decryption';

  @override
  String latestdecryptiondatestamp(
    DateTime week,
    DateTime d,
    DateTime mmm,
    DateTime yyy,
  ) {
    final intl.DateFormat weekDateFormat = intl.DateFormat.EEEE(localeName);
    final String weekString = weekDateFormat.format(week);
    final intl.DateFormat dDateFormat = intl.DateFormat.d(localeName);
    final String dString = dDateFormat.format(d);
    final intl.DateFormat mmmDateFormat = intl.DateFormat.MMM(localeName);
    final String mmmString = mmmDateFormat.format(mmm);
    final intl.DateFormat yyyDateFormat = intl.DateFormat.y(localeName);
    final String yyyString = yyyDateFormat.format(yyy);

    return '$weekString, $dString $mmmString $yyyString';
  }

  @override
  String latestdecryptionhours(DateTime hms) {
    final intl.DateFormat hmsDateFormat = intl.DateFormat.Hms(localeName);
    final String hmsString = hmsDateFormat.format(hms);

    return '$hmsString';
  }

  @override
  String latestdecryptioncodecrypt(String code) {
    return 'codecrypt $code';
  }
}
