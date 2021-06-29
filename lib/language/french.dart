// ignore_for_file: non_constant_identifier_names
class French {
  String appbar = "multiplication";
  String einstellungenlabel = "Paramètres";
  String statistikenlabel = "statistiques";
  String Uben = "apprendre";
  String Testen = "tester";
  String sterne5 = "Bravo tu as";
  String sterne4 = "C'est bien tu as";
  String sterne3 = "Pas si mal tu as";
  String sterne2 = "Il faut que tu t'entraines, tu n'as que";
  String sterne1 = "Zut, tu n'as que";
  String Einmaleins2 = "Table des 2";
  String Einmaleins3 = "Table des 3";
  String Einmaleins4 = "Table des 4";
  String Einmaleins5 = "Table des 5";
  String Einmaleins6 = "Table des 6";
  String Einmaleins7 = "Table des 7";
  String Einmaleins8 = "Table des 8";
  String Einmaleins9 = "Table des 9";
  String Einmaleins10 = "Table des 10";
  String Einmaleinsalles = "Toutes les tables";
  String Statistiken_loschen_title = "Attention";
  String Statistiken_loschen_body = "Tu veux vraiment effacer les statistiques ?";
  String Statistiken_text_einstellungen = "effacer les statistiques";
  String Statistiken_zeit_loschen_title = "Attention";
  String Statistiken_zeit_loschen_body = "Tu veux vraiment effacer les temps ?";
  String Statistiken_zeit_text_einstellungen = "effacer les temps";
  String ifzerowrong = "0 résultat faux";
  String Ja = "Oui";
  String Nein = "Non";
  String nochmal = "encore une fois";
  String Testvorkommen = "Choisis les tables";
  String Los_gehts = "allons-y !";
  String ifzeroright = "0 resultats juste";
  String durchschnitt = 'ta moyenne';
  String zeit = 'temps';
  String aktuelle_zeit = 'temps';
  String bestzeit = 'temps a battre';
  String about = "sur l'application";
  String privacy = 'Mentions legales';
  String apptext = '''Apprenez les tables de multiplication rapidement et facilement avec cette application.

Tu as appris les tables de multiplication à l'école, mais tu ne les sais pas encore très bien? Accède à la partie exercice de l'application pour réviser n’importe quelle table de 1 à 10. Prends ton temps car ce n'est pas chronométré. Si tu as fait une erreur, ça n’est pas grave tu sauras la bonne réponse la prochaine fois!

Si tu maîtrises bien les tables de multiplication ou si tu veux connaître ton niveau, accède aux tests et choisis les tables dansêtre testé(e) et commence. On te montrera l'une après l'autre 10 tâches générées aléatoirement que tu dois résoudre. Encore une fois, ce n’est pas le temps qui compte mais le nombre d’erreurs.
Dans les statistiques tu trouveras un tableau avec des champs pour chaque tâche que tu as résolues dans un test. Si le cercle est vert, cela signifie que tu as au moins 9 réponses sur 10 correctes. S'il est jaune, cela signifie que tu as bien répondu à au moins 5 questions et rouge signifie que tu n’as pas plus de 4 réponses correctes.

Tu seras chronométré pendant le test. Ton temp
sera indiqué dans les statistiques, ainsi que la date, l’heure et les étoiles que tu as atteintes.

You can find the source code here: ''';
  String policy = '''
L'application ne collecte, n'enregistre ni ne distribue aucune donnée personnelle et il ne lui est pas non plus possible

  • d' établir une connexion Internet

  • d'accéder à la mémoire, aux contacts ou au calendrier

  • de récupérer les messages

  • de localiser l'utilisateur

L'application ne demande que la langue préférée afin d'adapter la langue de l'application à l'utilisateur.


Mathilde Mélois
Schützenstraße 4
16359 Biesenthal
Deutschland

melois@zebrakuh.com
  ''';
  String falsch(falsch) => "faux: $falsch";
  String richtig(richtig) => "juste: $richtig";
  String aufgabe(testfirst, testsecond, ergebnis) => "$testfirst x $testsecond = $ergebnis";
  String anzahl_richtig_falsch(richtig, falsch) => "$richtig et $falsch";
  String getrightsingular(value) => "$value résultat juste";
  String getrightplural(value) => "$value résultats justes";
  String getwrongsingular(value) => "$value faux";
  String getwrongplural(value) => "$value faux";
  String einmaleinsmit(reihe) => "Table des $reihe";
  String SterneErreicht(rating) => "$rating étoiles";
  String SternErreicht(rating) => "$rating étoile";
  String dialogaufgabe(first, second) => "$first x $second";
}
