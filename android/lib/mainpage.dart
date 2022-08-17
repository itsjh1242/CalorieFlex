import 'package:flutter/material.dart';

class MainPage extends StatefulWidget{
  const MainPage({Key? key}): super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  double _weight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text(
            'CalorieFlex',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Text("오늘", style: TextStyle(fontSize: 20)),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.calendar_today, color: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, '/main/calendar');
              },
            )
          ],
        ),
        /* 스크롤 바 메인 콘텐츠 화면 */
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(left: 23, right: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('요약'), Text('상세정보')],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
                margin: const EdgeInsets.only(left: 23, top: 5, right: 23),
                width: 370,
                height: 200,
                child: Column(
                  children: [
                    // 요약
                    Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: const [
                                    Text('0',
                                        style: TextStyle(color: Colors.white)),
                                    Text('섭취량',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      '1731',
                                      style: TextStyle(
                                          fontSize: 30, color: Colors.white),
                                    ),
                                    Text('잔여 칼로리',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text('0',
                                        style: TextStyle(color: Colors.white)),
                                    Text('소비량',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 40),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: const [
                                      Text('탄수화물',
                                          style:
                                          TextStyle(color: Colors.white)),
                                      Text('0 / 211g',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      Text('단백질',
                                          style:
                                          TextStyle(color: Colors.white)),
                                      Text('0 / 84g',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      Text('지방',
                                          style:
                                          TextStyle(color: Colors.white)),
                                      Text('0 / 56g',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                    // 요약
                  ],
                ),
              ),
              // 영양
              Container(
                margin: const EdgeInsets.only(
                    left: 23, right: 23, top: 40, bottom: 40),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('영양'), Text('상세정보')],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 160,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey[200]),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 5),
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(20),
                                          color: Colors.blue),
                                      child: const Text('아침',
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(color: Colors.white)),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 30),
                                      child: IconButton(
                                        icon: const Icon(Icons.add_circle),
                                        color: Colors.grey,
                                        iconSize: 20,
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('0Kcal'),
                                      Text('추천: 519Kcal')
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 160,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey[200]),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 5),
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(20),
                                          color: Colors.blue),
                                      child: const Text('점심',
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(color: Colors.white)),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 30),
                                      child: IconButton(
                                        icon: const Icon(Icons.add_circle),
                                        color: Colors.grey,
                                        iconSize: 20,
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('0Kcal'),
                                      Text('추천: 693Kcal')
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 160,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey[200]),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 5),
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(20),
                                          color: Colors.blue),
                                      child: const Text('저녁',
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(color: Colors.white)),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 30),
                                      child: IconButton(
                                        icon: const Icon(Icons.add_circle),
                                        color: Colors.grey,
                                        iconSize: 20,
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('0Kcal'),
                                      Text('추천: 433Kcal')
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 160,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey[200]),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 5),
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(20),
                                          color: Colors.blue),
                                      child: const Text('간식',
                                          textAlign: TextAlign.center,
                                          style:
                                          TextStyle(color: Colors.white)),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 30),
                                      child: IconButton(
                                        icon: const Icon(Icons.add_circle),
                                        color: Colors.grey,
                                        iconSize: 20,
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('0Kcal'),
                                      Text('추천: 87Kcal')
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // 영양 end
              // 활동
              Container(
                margin: const EdgeInsets.only(
                    left: 23, right: 23, top: 40, bottom: 40),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('활동'), Text('상세정보')],
                      ),
                    ),
                    Container(
                      width: 370,
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('걸음', style: TextStyle(fontSize: 18),),
                          Text('자동으로 기록됩니다.'),
                          SizedBox(height: 10,),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('연결'),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // 활동 end
              // 신체정보
              Container(
                margin: const EdgeInsets.only(
                    left: 23, right: 23, top: 40, bottom: 40),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('신체정보'), Text('상세정보')],
                      ),
                    ),
                    Container(
                      width: 370,
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[900]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('체중', style: TextStyle(color: Colors.white, fontSize: 16),),
                          Text('목표: 75.0kg', style: TextStyle(color: Colors.white, fontSize: 16),),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _weight -= 0.1;
                                    });
                                  },
                                  icon: const Icon(Icons.horizontal_rule, color: Colors.white,)
                              ),
                              Row(
                                children: [
                                  Text('\$ ${_weight.toStringAsFixed(1)}', style: TextStyle(color: Colors.white, fontSize: 25),),
                                  Text('kg', style: TextStyle(color: Colors.white, fontSize: 25),),
                                ],
                              ),
                              IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _weight += 0.1;
                                    });
                                  },
                                  icon: const Icon(Icons.add, color: Colors.white,)
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // 신체정보 end
              // Memo
              Container(
                margin: const EdgeInsets.only(
                    left: 23, right: 23, top: 40, bottom: 40),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('메모')],
                      ),
                    ),
                    Container(
                      width: 370,
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('오늘 하루 어떠셨나요?', style: TextStyle(fontSize: 18),),
                          Text('건강과 감정을 기록하세요', style: TextStyle(fontSize: 14),),
                          SizedBox(height: 10,),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('메모 추가하기'),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ])
        )
    );
  }
}

