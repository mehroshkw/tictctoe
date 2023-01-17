import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String resultDeclaration = '';
  bool  Oturn = true;
  var check = 'false';
  var winnerColor = 'amber';


  List<String> displayXO = ['','','','','','','','',''];
  // var x0 = 'amber',
  //     x1= 'amber',
  //     x2= 'amber',
  //     x4= 'amber',
  //     x5= 'amber',
  //     x6= 'amber',
  //     x7= 'amber',
  //     x8= 'amber',
  //     x9= 'amber';
  // void _tapped(int index){
  //   setState(() {
  //     if(Oturn && displayXO[index] == 0){
  //       displayXO[index] = '0';
  //     }else{
  //       displayXO[index]='X';
  //     }
  //     Oturn = !Oturn;
  //   });
  // }
  void checkWinner(){
    if(
    displayXO[0] == displayXO[1] &&
        displayXO[0] == displayXO[2] &&
        displayXO[0] != ''
    ){
      setState(() {
        resultDeclaration = 'Player'+ displayXO[0] + 'wins';
        winnerColor = 'green';
        // x0 = 'green';
        // x1 = 'green';
        // x1 = 'green';
      });
    }
    if(
    displayXO[3] == displayXO[4] &&
        displayXO[3] == displayXO[5] &&
        displayXO[3] != ''
    ){
      setState(() {
        resultDeclaration = 'Player'+ displayXO[3] + 'wins';
        winnerColor = 'green';
        // x0 = 'green';
        // x1 = 'green';
        // x1 = 'green';
      });
    }
    if(
    displayXO[0] == displayXO[1] &&
        displayXO[0] == displayXO[2] &&
        displayXO[0] != ''
    ){
      setState(() {
        resultDeclaration = 'Player'+ displayXO[0] + 'wins';
        winnerColor = 'green';
        // x0 = 'green';
        // x1 = 'green';
        // x1 = 'green';
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Tic Toc Toe"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Expanded(
                flex: 1,
                child: Text("Score Board")),
            Expanded(
                flex: 3,
                child: GridView.builder(
                  itemCount: 9,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                        onTap: (){
                        // _tapped(index);
                          if(displayXO[index].isEmpty){
                            if(check == 'false'){
                              displayXO[index] = 'X';
                              check = 'true';
                              setState(() {
                                checkWinner();
                              });
                              print(check);
                            }else if(check == 'true'){
                              displayXO[index] = 'O';
                              check = 'false';
                              setState(() {
                                checkWinner();
                              });
                              print(check);
                            }
                          }

                        },
                        child: winnerColor == 'green' ?
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  width: 5,
                                  color: Colors.red
                              ),
                              color:Colors.green
                          ),
                          child: Center(
                            child: Text(
                              displayXO[index],
                              style: GoogleFonts.coiny(
                                textStyle: const TextStyle(
                                    color: Colors.red,
                                    letterSpacing: .5,
                                    fontSize: 66
                                ),
                              ),
                            ),
                          ),
                        )
                            :Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  width: 5,
                                  color: Colors.red
                              ),
                              color:Colors.amber
                          ),
                          child: Center(
                            child: Text(
                              displayXO[index],
                              style: GoogleFonts.coiny(
                                textStyle: const TextStyle(
                                    color: Colors.red,
                                    letterSpacing: .5,
                                    fontSize: 66
                                ),
                              ),
                            ),
                          ),
                        )
                      );
                    }
                    ),
            ),
            const Expanded(
                flex: 2,
                child: Text("Timer Board")),
          ],
        ),
      ),
    );
  }
}

