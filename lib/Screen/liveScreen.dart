import 'package:flutter/material.dart';
import 'package:kbc_game/Screen/finalScreen.dart';
import 'package:kbc_game/Screen/levalScreen.dart';
import 'package:kbc_game/Screen/looseScreen.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {

  List Qestion = [
    "The language of Lakshadweep. a Union Territory of India, is",
    "In which group of places the Kumbha Mela is held every twelve years?",
    "Bahubali festival is related to",
    "Which day is observed as the World Standards  Day?",
    "September 27 is celebrated every year as",
    "Who is the author of 'Manas Ka-Hans' ?",
    "Pongal is a popular festival of which state?",
    "Ghototkach in Mahabharat was the son of",
    "The first month of the Indian national calendar is",
    "Which of the followiing is a folk dance of India?"
  ];
  List Ans = [
    "Malayalam",
    "Prayag",
    "Jainism",
    "Oct 14",
    "World Tourism Day",
    "Amrit Lal Nagar",
    "Tamil Nadu",
    "Bhima",
    "Chaitra",
    "Garba",
  ];
  List usranslist = [];
  List AansList = [
    "Telugu",
    "Prayag",
    "Buddhism",
    "Nov 15",
    "Teachers' Day",
    "Jayashankar Prasad",
    "Tamil Nadu",
    "Arjuna",
    "Ashadha",
    "Garba",
  ];
  List BansList = [
    "Tamil",
    "Ujjain",
    "Islam",
    "Dec 2",
    "World Tourism Day",
    "Amrit Lal Nagar",
    "Karnataka",
    "Duryodhana",
    "Chaitra",
    "Kathakali"
  ];
  List CansList = [
    "Hindi",
    "Rameshwaram",
    "Hinduism",
    "Oct 14",
    "National Integration Day",
    "Prem Chand",
    "Kerala",
    "Bhima",
    "Magha",
    "Mohiniattam"
  ];
  List DansList = [
    "Malayalam",
    "Chittakoot",
    "Jainism",
    "June 26",
    "International Literacy Day",
    "Khushwant Singh",
    "Andhra Pradesh",
    "Yudhishthir",
    "Vaishakha",
    "Manipuri",
  ];
  List C = [
    Colors.pinkAccent,
    Colors.blue,
    Colors.amber,
    Colors.green,
    Colors.indigoAccent,
    Colors.purple,
    Colors.redAccent,
    Colors.deepOrangeAccent,
    Colors.indigoAccent,
    Colors.lightBlueAccent,
  ];
  int i=0,j=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 400,width: double.infinity,
              decoration: BoxDecoration(
                color: C[i],
              ),
              child: Center(child: Text("${Qestion[i]}",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,))),
            ),
            Expanded(
              child: Container(
                height: 400,width: double.infinity,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if(j<11) {
                                usranslist.add("${AansList[i]}");
                                setState(() {
                                  if (usranslist[i] == Ans[i]) {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Level(),));
                                    if (i < 9) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 9) {
                                      j++;
                                    }
                                  }
                                  else {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loose(),));
                                    i = 0;
                                    j = 0;
                                    usranslist.clear();
                                  }
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text("${AansList[i]}",style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if(j<11)
                              {
                                usranslist.add("${BansList[i]}");

                                setState(() {
                                  if(usranslist[i] == Ans[i]) {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Level(),));
                                    if(i<9)
                                    {
                                      i++;
                                      j++;
                                    }
                                    if(i==9) {
                                      j++;
                                    }
                                  }
                                  else
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loose(),));
                                    i=0;
                                    j=0;
                                    usranslist.clear();
                                  }
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text("${BansList[i]}",style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if(j<11) {
                                usranslist.add("${CansList[i]}");
                                setState(() {
                                  if (usranslist[i] == Ans[i]) {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Level(),));
                                    if (i < 9) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 9) {
                                      j++;
                                    }
                                  }
                                  else {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loose(),));
                                    i = 0;
                                    j = 0;
                                    usranslist.clear();
                                  }
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text("${CansList[i]}",style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if(j<11)
                              {
                                usranslist.add("${DansList[i]}");

                                setState(() {
                                  if(usranslist[i] == Ans[i]) {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Level(),));
                                    if(i<9)
                                    {
                                      i++;
                                      j++;
                                    }
                                    if(i==9) {
                                      j++;
                                    }
                                  }
                                  else
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loose(),));
                                    i=0;
                                    j=0;
                                    usranslist.clear();
                                  }
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text("${DansList[i]}",style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),Visibility(
                      visible: j>=11?true:false,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Winner(),));
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,fixedSize: Size(100, 50)),
                          child: Center(child: Text("Next",style: TextStyle(fontSize: 20,color: Colors.black),),)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}