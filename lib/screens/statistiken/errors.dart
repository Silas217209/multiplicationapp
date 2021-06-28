import 'package:flutter/material.dart';
import 'package:multiplication/utils/widgets.dart';
import 'package:multiplication/utils/variablen.dart';

class Statistiken extends StatefulWidget {
  Statistiken({Key? key}) : super(key: key);

  @override
  _StatistikenState createState() => _StatistikenState();
}

class _StatistikenState extends State<Statistiken> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(translation.durchschnitt, style: TextStyle(fontSize: height/30),),
            MeanStar(),
            Expanded(
              child: Center(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    child: GridView.count(
                      crossAxisCount: 11,
                      children: <Widget> [
                        staticbloc(''),
                        staticbloc('1'),
                        staticbloc('2'),
                        staticbloc('3'),
                        staticbloc('4'),
                        staticbloc('5'),
                        staticbloc('6'),
                        staticbloc('7'),
                        staticbloc('8'),
                        staticbloc('9'),
                        staticbloc('10'),
                    
                        staticbloc('1'),
                        StatistikElement(result: '1', firstmultiplicator: 1, secondmultiplicator: 1),
                        StatistikElement(result: '2', firstmultiplicator: 1, secondmultiplicator: 2),
                        StatistikElement(result: '3', firstmultiplicator: 1, secondmultiplicator: 3),
                        StatistikElement(result: '4', firstmultiplicator: 1, secondmultiplicator: 4),
                        StatistikElement(result: '5', firstmultiplicator: 1, secondmultiplicator: 5),
                        StatistikElement(result: '6', firstmultiplicator: 1, secondmultiplicator: 6),
                        StatistikElement(result: '7', firstmultiplicator: 1, secondmultiplicator: 7),
                        StatistikElement(result: '8', firstmultiplicator: 1, secondmultiplicator: 8),
                        StatistikElement(result: '9', firstmultiplicator: 1, secondmultiplicator: 9),
                        StatistikElement(result: '10', firstmultiplicator: 1, secondmultiplicator:10),
                    
                        staticbloc('2'),
                        StatistikElement(result: '2', firstmultiplicator: 2, secondmultiplicator:  1),
                        StatistikElement(result: '4', firstmultiplicator: 2, secondmultiplicator:  2),
                        StatistikElement(result: '6', firstmultiplicator: 2, secondmultiplicator:  3),
                        StatistikElement(result: '8', firstmultiplicator: 2, secondmultiplicator:  4),
                        StatistikElement(result: '10', firstmultiplicator: 2, secondmultiplicator: 5),
                        StatistikElement(result: '12', firstmultiplicator: 2, secondmultiplicator: 6),
                        StatistikElement(result: '14', firstmultiplicator: 2, secondmultiplicator: 7),
                        StatistikElement(result: '16', firstmultiplicator: 2, secondmultiplicator: 8),
                        StatistikElement(result: '18', firstmultiplicator: 2, secondmultiplicator: 9),
                        StatistikElement(result: '20', firstmultiplicator: 2, secondmultiplicator: 10),
                    
                        staticbloc('3'),
                        StatistikElement(result: '3', firstmultiplicator: 3, secondmultiplicator:  1),
                        StatistikElement(result: '6', firstmultiplicator: 3, secondmultiplicator:  2),
                        StatistikElement(result: '9', firstmultiplicator: 3, secondmultiplicator:  3),
                        StatistikElement(result: '12', firstmultiplicator: 3, secondmultiplicator: 4),
                        StatistikElement(result: '15', firstmultiplicator: 3, secondmultiplicator: 5),
                        StatistikElement(result: '18', firstmultiplicator: 3, secondmultiplicator: 6),
                        StatistikElement(result: '21', firstmultiplicator: 3, secondmultiplicator: 7),
                        StatistikElement(result: '24', firstmultiplicator: 3, secondmultiplicator: 8),
                        StatistikElement(result: '27', firstmultiplicator: 3, secondmultiplicator: 9),
                        StatistikElement(result: '30', firstmultiplicator: 3, secondmultiplicator: 10),
                    
                        staticbloc('4'),
                        StatistikElement(result: '4', firstmultiplicator: 4, secondmultiplicator:  1),
                        StatistikElement(result: '8', firstmultiplicator: 4, secondmultiplicator:  2),
                        StatistikElement(result: '12', firstmultiplicator: 4, secondmultiplicator: 3),
                        StatistikElement(result: '16', firstmultiplicator: 4, secondmultiplicator: 4),
                        StatistikElement(result: '20', firstmultiplicator: 4, secondmultiplicator: 5),
                        StatistikElement(result: '24', firstmultiplicator: 4, secondmultiplicator: 6),
                        StatistikElement(result: '28', firstmultiplicator: 4, secondmultiplicator: 7),
                        StatistikElement(result: '32', firstmultiplicator: 4, secondmultiplicator: 8),
                        StatistikElement(result: '36', firstmultiplicator: 4, secondmultiplicator: 9),
                        StatistikElement(result: '40', firstmultiplicator: 4, secondmultiplicator: 10),
                    
                        staticbloc('5'),
                        StatistikElement(result: '5', firstmultiplicator: 5, secondmultiplicator:  1),
                        StatistikElement(result: '10', firstmultiplicator: 5, secondmultiplicator: 2),
                        StatistikElement(result: '15', firstmultiplicator: 5, secondmultiplicator: 3),
                        StatistikElement(result: '20', firstmultiplicator: 5, secondmultiplicator: 4),
                        StatistikElement(result: '25', firstmultiplicator: 5, secondmultiplicator: 5),
                        StatistikElement(result: '30', firstmultiplicator: 5, secondmultiplicator: 6),
                        StatistikElement(result: '35', firstmultiplicator: 5, secondmultiplicator: 7),
                        StatistikElement(result: '40', firstmultiplicator: 5, secondmultiplicator: 8),
                        StatistikElement(result: '45', firstmultiplicator: 5, secondmultiplicator: 9),
                        StatistikElement(result: '50', firstmultiplicator: 5, secondmultiplicator: 10),
                    
                        staticbloc('6'),
                        StatistikElement(result: '6', firstmultiplicator: 6, secondmultiplicator:  1),
                        StatistikElement(result: '12', firstmultiplicator: 6, secondmultiplicator: 2),
                        StatistikElement(result: '18', firstmultiplicator: 6, secondmultiplicator: 3),
                        StatistikElement(result: '24', firstmultiplicator: 6, secondmultiplicator: 4),
                        StatistikElement(result: '30', firstmultiplicator: 6, secondmultiplicator: 5),
                        StatistikElement(result: '36', firstmultiplicator: 6, secondmultiplicator: 6),
                        StatistikElement(result: '42', firstmultiplicator: 6, secondmultiplicator: 7),
                        StatistikElement(result: '48', firstmultiplicator: 6, secondmultiplicator: 8),
                        StatistikElement(result: '54', firstmultiplicator: 6, secondmultiplicator: 9),
                        StatistikElement(result: '60', firstmultiplicator: 6, secondmultiplicator: 10),
                    
                        staticbloc('7'),
                        StatistikElement(result: '7', firstmultiplicator: 7, secondmultiplicator:  1),
                        StatistikElement(result: '14', firstmultiplicator: 7, secondmultiplicator: 2),
                        StatistikElement(result: '21', firstmultiplicator: 7, secondmultiplicator: 3),
                        StatistikElement(result: '28', firstmultiplicator: 7, secondmultiplicator: 4),
                        StatistikElement(result: '35', firstmultiplicator: 7, secondmultiplicator: 5),
                        StatistikElement(result: '42', firstmultiplicator: 7, secondmultiplicator: 6),
                        StatistikElement(result: '49', firstmultiplicator: 7, secondmultiplicator: 7),
                        StatistikElement(result: '56', firstmultiplicator: 7, secondmultiplicator: 8),
                        StatistikElement(result: '63', firstmultiplicator: 7, secondmultiplicator: 9),
                        StatistikElement(result: '70', firstmultiplicator: 7, secondmultiplicator: 10),
                    
                        staticbloc('8'),
                        StatistikElement(result: '8', firstmultiplicator: 8, secondmultiplicator:  1),
                        StatistikElement(result: '16', firstmultiplicator: 8, secondmultiplicator: 2),
                        StatistikElement(result: '24', firstmultiplicator: 8, secondmultiplicator: 3),
                        StatistikElement(result: '32', firstmultiplicator: 8, secondmultiplicator: 4),
                        StatistikElement(result: '40', firstmultiplicator: 8, secondmultiplicator: 5),
                        StatistikElement(result: '48', firstmultiplicator: 8, secondmultiplicator: 6),
                        StatistikElement(result: '56', firstmultiplicator: 8, secondmultiplicator: 7),
                        StatistikElement(result: '64', firstmultiplicator: 8, secondmultiplicator: 8),
                        StatistikElement(result: '72', firstmultiplicator: 8, secondmultiplicator: 9),
                        StatistikElement(result: '80', firstmultiplicator: 8, secondmultiplicator: 10),
                    
                        staticbloc('9'),
                        StatistikElement(result: '9', firstmultiplicator: 9, secondmultiplicator:  1),
                        StatistikElement(result: '18', firstmultiplicator: 9, secondmultiplicator: 2),
                        StatistikElement(result: '27', firstmultiplicator: 9, secondmultiplicator: 3),
                        StatistikElement(result: '36', firstmultiplicator: 9, secondmultiplicator: 4),
                        StatistikElement(result: '45', firstmultiplicator: 9, secondmultiplicator: 5),
                        StatistikElement(result: '54', firstmultiplicator: 9, secondmultiplicator: 6),
                        StatistikElement(result: '63', firstmultiplicator: 9, secondmultiplicator: 7),
                        StatistikElement(result: '72', firstmultiplicator: 9, secondmultiplicator: 8),
                        StatistikElement(result: '81', firstmultiplicator: 9, secondmultiplicator: 9),
                        StatistikElement(result: '90', firstmultiplicator: 9, secondmultiplicator: 10),
                    
                        staticbloc('10'),
                        StatistikElement(result: '10', firstmultiplicator: 10, secondmultiplicator: 1),
                        StatistikElement(result: '20', firstmultiplicator: 10, secondmultiplicator: 2),
                        StatistikElement(result: '30', firstmultiplicator: 10, secondmultiplicator: 3),
                        StatistikElement(result: '40', firstmultiplicator: 10, secondmultiplicator: 4),
                        StatistikElement(result: '50', firstmultiplicator: 10, secondmultiplicator: 5),
                        StatistikElement(result: '60', firstmultiplicator: 10, secondmultiplicator: 6),
                        StatistikElement(result: '70', firstmultiplicator: 10, secondmultiplicator: 7),
                        StatistikElement(result: '80', firstmultiplicator: 10, secondmultiplicator: 8),
                        StatistikElement(result: '90', firstmultiplicator: 10, secondmultiplicator: 9),
                        StatistikElement(result: '100', firstmultiplicator: 10, secondmultiplicator:10),
                      ]
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}