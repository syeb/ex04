import 'dart:math';

//Exercice 04
void main() {
  ex01();
  ex02();
  ex03();
  ex04();
  ex05();
}

String fibonacciIteration(int t) {
  int a = 0,
      b = 1,
      f = 1,
      n = 1;
  String result = '0' '1';
  while (n < t) {
    f = a + b;
    result = '$result $f';
    a = b;
    b = f;
    n = n + 1;
  }
  return result;
}

String point(center, x1, y1) {
  return "Le point $center relié par la droite donne les points suivants:\n ($x1, $y1).";
}

String birthday(annee, mois, jour) {
  return "Il s'est écoulé $annee années, $mois mois et $jour jours depuis ma date de naissance.";
}

String interest(c1, c2, c3, c4, c5) {
  return "L'intérêt reçu sur l'investissement initial de 1000 dollars pour les 5 premières années sont de \n $c1, $c2, $c3, $c4 et $c5. dollars.";
}


//Question 1

void ex01() {
  int count = 9; // On veut seulement 10 nombre en partant de 0.
  String sequence = fibonacciIteration(count);
  print("Question 1");
  print(
      "Print the first 10 numbers, starting with 0, of the Fibonacci sequence.");
  print(sequence);
}


//Question 2
void ex02() {
  num width = (800/2);
  num height = (600/2);
  num length = 160;

  var center = ('$width, $height');
  num p1= length*cos(45);
  num p2= length*sin(45);
  num x1 = (width + p1);
  num y1 = (height + p2);

  print('Question 2');
  print (point('$center', '$x1', '$y1'));
}


//Question 3

void ex03() {

  DateTime Today = new DateTime.now();
  DateTime Birthday = new DateTime(1989, 08, 07, 0, 0, 0);
  Duration difference = Today.difference(Birthday);
  var annee = (Today.year - Birthday.year);
  var mois = (Today.month - Birthday.month) ;
  var jour = (Today.day - Birthday.day);

  print('Question 3');
  print(birthday('$annee','$mois','$jour'));
}


//Question 4

void ex04() {

  num initial = 1000;
  num fixed = 1.048;
  var c1 = (initial * pow(fixed,1))-1000;
  var c2 = ((initial * pow(fixed,2))-1000).toStringAsFixed(2);
  var c3 = ((initial * pow(fixed,3))-1000).toStringAsFixed(2);
  var c4 = ((initial * pow(fixed,4))-1000).toStringAsFixed(2);
  var c5 = ((initial * pow(fixed,5))-1000).toStringAsFixed(2);

 print('Question 4');
 print (interest('$c1', '$c2', '$c3', '$c4', '$c5'));
}


//Question 5

void ex05() {
  print ('''Question 5
Les 16 premiers termes de la table de multiplication de 8 sont:''');
  var x = 8;
  for(var i = 0 ; i <= 16; i++){
   var z = (x * i);
   print('$x X $i = $z');
  }
}

