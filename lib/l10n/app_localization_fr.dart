// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String numberargument(int num) {
    return '$num';
  }

  @override
  String stringargument(String string) {
    return '$string';
  }

  @override
  String get welcome => 'Bienvenue sur Crypnote';

  @override
  String get spontanious => 'une note avec un chiffrement';

  @override
  String get signin => 'Se connecter avec un nom d\'utilisateur';

  @override
  String get username => 'Nom d\'utilisateur';

  @override
  String get password => 'Mot de passe';

  @override
  String get loginbutton => 'Connexion';

  @override
  String get createaccount => 'Commencer le chiffrement';

  @override
  String get policy => 'Politique de confidentialité 2026';

  @override
  String get applicationName => 'Crypnote';

  @override
  String get applicationVersion => '0.1';

  @override
  String get applicationLegalese => 'licence-mt-territoire';

  @override
  String get errorPasswordValidation =>
      'Le mot de passe doit contenir au moins 8 caractères';

  @override
  String get authenticationsuccessful => 'Authentification réussie';

  @override
  String get authenticationExceptionMessage => 'Échec de l\'authentification';

  @override
  String get register => 'S\'inscrire avec un nom d\'utilisateur';

  @override
  String get registerheadline => 'commencez à créer une note chiffrée';

  @override
  String get registertitle => 'que personne ne peut voir !';

  @override
  String get registerbutton => 'S\'inscrire';

  @override
  String get emptyUsernameValidation =>
      'Le nom d\'utilisateur ne doit pas être vide';

  @override
  String get charUsernameValidation =>
      'Le nom d\'utilisateur doit comporter au moins 5 caractères';

  @override
  String get emptyPasswordValidation => 'Le mot de passe ne peut pas être vide';

  @override
  String get charPasswordValidation =>
      'Le mot de passe doit comporter au moins 8 caractères';

  @override
  String get registerNow =>
      'Vous n\'avez pas encore de compte ? Inscrivez-vous dès maintenant';

  @override
  String get registersuccessful => 'Inscription réussie';

  @override
  String get registerfailed => 'Impossible de s\'inscrire, veuillez réessayer';

  @override
  String get setuppindecryption => 'Configurer le déchiffrement par code PIN !';

  @override
  String get createpinbutton => 'Créer';

  @override
  String get pincreatesuccessful => 'PIN créé avec succès';

  @override
  String get pincreatedfailed =>
      'Échec de la création du PIN, reconnectez-vous !';

  @override
  String greetingday(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.Hms(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'bon $dateString';
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
  String get dashboard => 'tableau de bord';

  @override
  String get totalDashboardTitle => 'total';

  @override
  String get totalDashboardLabel =>
      'nombre de crypnotes créés depuis la création du compte';

  @override
  String get waitingDashboardTitle => 'en attente';

  @override
  String get waitingDashboardLabel => 'pour ouverture après le temps écoulé';

  @override
  String get deletedDashboardTitle => 'supprimé';

  @override
  String get deletedDashboardLabel => 'crypnote récupérable après suppression';

  @override
  String get importanceDashboardTitle => 'importance';

  @override
  String get importanceDashboardLabel => 'le crypnote de plus haute priorité';

  @override
  String get createpininformation =>
      'nécessaire pour le déchiffrement afin d\'assurer une approche de restriction durable';

  @override
  String get erroremptypinvalidation => 'le code PIN ne peut pas être vide';

  @override
  String get errorcharspinvalidation =>
      'le code PIN doit comporter au moins 7 caractères';

  @override
  String get encryption => 'chiffrement';

  @override
  String get createcrypnote => 'créer';

  @override
  String get decryptionschedulenonactive => 'Planification du déchiffrement';

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

    return 'Planification du déchiffrement le $weekString, $dayString $monthString $yearString $hmsString';
  }

  @override
  String get importancelevel => 'niveau d\'importance';

  @override
  String get encrytionbutton => 'chiffrement';

  @override
  String get encryptionsuccessful => 'Chiffrement réussi';

  @override
  String get encryptionfailed => 'Échec du chiffrement, reconnectez-vous !';

  @override
  String get encryptioncollectionitemdeleteconfirmationtitle =>
      'Êtes-vous sûr de vouloir supprimer ?';

  @override
  String get encryptioncollectionitemdeletionaccepted => 'oui';

  @override
  String get emptycollection => 'aucun chiffrement n\'a été effectué';

  @override
  String get encryptioncollectionitemdeletiondeclined => 'non';

  @override
  String get encryptioncollectionitemlatestdecryptiontitle =>
      'dernier déchiffrement à';

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
  String get recycleitemdeletedtitle => 'supprimé le';

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
  String get recycledestroytooltip => 'détruire';

  @override
  String get recyclerestoretooltip => 'restaurer';

  @override
  String get emptyrecycle => 'aucun chiffrement n\'a été recyclé';

  @override
  String get profile => 'profil';

  @override
  String get yours => 'vos informations';

  @override
  String get usernameprofile => 'nom d\'utilisateur';

  @override
  String get firstnameprofile => 'prénom';

  @override
  String get lastnameprofile => 'nom de famille';

  @override
  String get preferences => 'préférences';

  @override
  String get algorithmpreferenceslabel => 'algorithme';

  @override
  String algoritmpreferences(String algorithm) {
    return '$algorithm';
  }

  @override
  String get secretkeypreferenceslabel => 'clé secrète';

  @override
  String secretkeypreferences(String secretkey) {
    return '$secretkey';
  }

  @override
  String get thememodepreferenceslabel => 'mode thème';

  @override
  String thememodepreferences(String thememode) {
    return '$thememode';
  }

  @override
  String get modifyprofilepopmenu => 'modifier le profil';

  @override
  String get changeencryptorpopmenu => 'changer l\'algorithme de chiffrement';

  @override
  String get aboutpopmenu => 'à propos';

  @override
  String get logoutpopmenu => 'déconnexion';

  @override
  String get modifyprofiletitle => 'modifier le profil';

  @override
  String get newusername => 'nouveau nom d\'utilisateur';

  @override
  String get newfirstname => 'nouveau prénom';

  @override
  String get newlastname => 'nouveau nom de famille';

  @override
  String get modifyusernameinformation =>
      'il n\'y a pas d\'exception pour modifier le nom d\'utilisateur sauf en cas d\'erreurs compréhensibles';

  @override
  String get modifyencryptortitle => 'modifier l\'algorithme de chiffrement';

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
      'pour maximiser la sécurité, pensez à générer une nouvelle clé secrète !';

  @override
  String get logoutconfirmation =>
      'Êtes-vous sûr de vouloir vous déconnecter ?';

  @override
  String get logoutconfirmationaccepted => 'oui';

  @override
  String get logoutconfirmationdeclined => 'non';

  @override
  String get nearestdecryption => 'prochain déchiffrement';

  @override
  String get nearestdecryptionhoursremaining => 'heures restantes';

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

    return 'le $weekString, $dString $MMMString $yyyString';
  }

  @override
  String get latestdecyption => 'dernier déchiffrement';

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
