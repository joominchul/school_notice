import 'package:flutter/material.dart';
import 'package:school/page.dart';

class Home extends StatelessWidget {
  @override
  String KNU = '강원대 공지사항';
  String DEP = '학과 공지사항';
  String SW = 'SW사업단 공지사항';
  String Link = '링크 플러스 사업단 공지사항';
  String Kurl =
      'https://wwwk.kangwon.ac.kr/www/selectBbsNttList.do?bbsNo=81&key=277&searchCtgry=%EC%A0%84%EC%B2%B4%40%40%EC%B6%98%EC%B2%9C&';
  String Durl =
      'https://cse.kangwon.ac.kr/cse/community/undergraduate-notice.do';
  String Surl =
      'https://sw.kangwon.ac.kr/index.php?mt=page&mp=5_1&mm=oxbbs&oxid=1&CAT_ID=0&cpage=1';
  String Lurl = 'https://linc.kangwon.ac.kr/index.php?mp=4_1';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
        appBar: AppBar(
            title: Text("학교 공지사항 모음"),
            backgroundColor: Colors.indigo,
            centerTitle: true,),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/knu.jpg'), fit: BoxFit.cover)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => page(Kurl, KNU)));
                        },
                        child: Text(KNU, style: TextStyle(fontSize: 20)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        )),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => page(Durl, DEP)));
                      },
                      child: Text(DEP, style: TextStyle(fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => page(Surl, SW)));
                      },
                      child: Text(SW, style: TextStyle(fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => page(Lurl, Link)));
                      },
                      child: Text(Link, style: TextStyle(fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                    )
                  ],
                ),
              ],
            )));
  }
}
