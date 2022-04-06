import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 4, 94, 136),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionNumber = 0;

  Map<dynamic, dynamic> sorular = {
    '0': {
      'soru':
          'Trafik para cezalarının tebliğ edildiği tarihten itibaren kaç gün içinde ödenerse %25 indirimden faydalanılır?',
      'asikki': '15',
      'bsikki': '25',
      'csikki': '30',
      'dsikki': '20',
      'cevap': '15'
    },
    '1': {
      'soru':
          'Marşa basılıp motor çalıştığında aşağıdakilerden hangisinin sönmesi gerekir?',
      'asikki': 'Park lambası',
      'bsikki': 'Sinyal lambası',
      'csikki': 'Şarj lambası',
      'dsikki': 'El fren lambası',
      'cevap': 'Şarj lambası'
    },
    '2': {
      'soru': ' Bak - Dinle - Hisset yönteminde "Bak" ne anlama gelir?',
      'asikki': 'Yaralının göğüs kafesinin inip kalktığına bakılması',
      'bsikki': 'Kaza bölgesinde yanıcı madde olup olmadığına bakılması ',
      'csikki': 'Yaralıda kırık olup olmadığına bakılması',
      'dsikki': 'Kaç yaralı olduğuna bakılması ',
      'cevap': ' Yaralının göğüs kafesinin inip kalktığına bakılmas'
    },
    '3': {
      'soru':
          ' Araçta kısa devreden doğacak yangın durumunda nasıl davranılır?',
      'asikki': 'Alternatörün kablosu çıkarılır. ',
      'bsikki': 'Akünün kutup başları çıkarılır. ',
      'csikki': 'Distribütörün kablosu çıkarılır. ',
      'dsikki': 'Marş motorunun kablosu çıkarılır. ',
      'cevap': 'Akünün kutup başları çıkarılır. '
    },
    '4': {
      'soru':
          'Taşıt yolunun bir şeridinde en fazla kaç bisikletli yan yana gidebilir?',
      'asikki': ' 2',
      'bsikki': ' 3',
      'csikki': ' 4',
      'dsikki': ' 5',
      'cevap': ' 2'
    },
    '5': {
      'soru': ' Aşağıdakilerden hangisi trafik kazasında asli kusur sayılır?',
      'asikki': 'Kırmızı ışıkta geçmek ',
      'bsikki': 'Taşıma sınırının üzerinde yük taşımak ',
      'csikki': 'Zorunlu olmadıkça aracını yavaş sürmek ',
      'dsikki': 'Sürücü belgesini yanında bulundurmamak ',
      'cevap': ' Kırmızı ışıkta geçmek '
    },
    '6': {
      'soru':
          'Aşağıdakilerden hangisi, trafik denetiminde istenmesi hâlinde sürücünün göstermek zorunda olduğu belgelerdendir?',
      'asikki': 'Sürücü belgesi ',
      'bsikki': 'Araç imalat belgesi ',
      'csikki': 'Parça garanti belgesi ',
      'dsikki': 'Kasko sigorta poliçesi ',
      'cevap': 'Sürücü belgesi '
    },
    '7': {
      'soru':
          'Kanamalarda kanın açık renkte ve kalp atımları ile uyumlu olarak kesik kesik akması, hangi tür kanama olduğunu gösterir?',
      'asikki': 'Diş eti kanaması ',
      'bsikki': 'Atardamar kanaması ',
      'csikki': 'Toplardamar kanaması ',
      'dsikki': 'Kılcal damar kanaması ',
      'cevap': 'Atardamar kanaması '
    },
    '8': {
      'soru':
          'Aracın kullanma kılavuzuna göre belirli kilometre dolunca aşağıdakilerden hangisinin değişmesi gerekir?',
      'asikki': 'Volan dişlisinin ',
      'bsikki': 'Triger kayışının ',
      'csikki': 'Endüksiyon bobininin ',
      'dsikki': 'Marş dişlisinin ',
      'cevap': 'Triger kayışının '
    },
    '9': {
      'soru': 'Manevra yapacak sürücü aşağıdakilerden hangisini yapmalıdır? ',
      'asikki': 'Ön, arka ve yanlardaki trafiği kontrol etmeli ',
      'bsikki': 'İşaret verdiği anda manevraya başlamalı ',
      'csikki': 'Manevraya başladıktan sonra işaret vermeli ',
      'dsikki': 'Manevra bitmeden önce işaret vermeyi sona erdirmeli ',
      'cevap': 'Ön, arka ve yanlardaki trafiği kontrol etmeli '
    },
    '10': {
      'soru':
          'Trafik denetiminde istenmesi hâlinde, sürücünün göstermek zorunda olduğu belgeler hangileridir?',
      'asikki': 'Gümrük giriş belgesi, ithal belgesi, noter satış belgesi ',
      'bsikki':
          'Tescil belgesi, trafik belgesi, zorunlu mali sorumluluk sigortası, sürücü belgesi   ',
      'csikki': 'İşletme belgesi, imalat teknik belgesi ',
      'dsikki': 'Kasko sigortası, sahiplik belgesi ',
      'cevap':
          'Tescil belgesi, trafik belgesi, zorunlu mali sorumluluk sigortası, sürücü belgesi '
    },
    '11': {
      'soru':
          'Aşağıdakilerden hangisi kavrama (debriyaj) sisteminin görevidir?',
      'asikki': 'Motorun hareketini supaplara iletmek veya kesmek ',
      'bsikki': 'Motorun hareketini altenatöre iletmek veya kesmek ',
      'csikki': 'Motorun hareketini vites kutusuna iletmek veya kesmek ',
      'dsikki': ' Motorun hareketini marş motoruna iletmek veya kesmek ',
      'cevap': 'Motorun hareketini vites kutusuna iletmek veya kesmek '
    },
    '12': {
      'soru':
          'Tehlikeli madde taşıyan araçlar arızalandığında aşağıdakilerden hangisi yapılmalıdır?',
      'asikki': 'Acil uyarı ışıkları ile diğer araç sürücüleri uyarılmalı ',
      'bsikki': 'Aracın ön ve arkasına büyük boyutlu taşlar dizilmeli ',
      'csikki':
          'Kırmızı ışık veren cihazlarla işaretlenip gözcü bulundurulmalı ',
      'dsikki': 'Araç üzerine tehlikeli madde yazılı levhalar konulmalı ',
      'cevap': 'Kırmızı ışık veren cihazlarla işaretlenip gözcü bulundurulmalı '
    },
    '13': {
      'soru':
          'Karlı ve buzlu yol kesimlerinde, araçların kaymasını önlemek amacıyla öncelikle motordan güç alan tekerleklerine, aşağıdakilerden hangisi takılır?',
      'asikki': 'Çekme halatı ',
      'bsikki': 'Patinaj zinciri ',
      'csikki': 'Hız sınırlayıcı cihaz ',
      'dsikki': 'Lastik basınç sensörü ',
      'cevap': 'Patinaj zinciri '
    },
    '14': {
      'soru':
          'Burkulmalarda aşağıdaki ilk yardım uygulamalarından hangisini yapmak yanlıştır?',
      'asikki': 'Burkulan bölgenin dinlendirilmesi ',
      'bsikki': 'Burkulan bölgenin yüksekte tutulması ',
      'csikki': 'Burkulan bölgeye sıcak uygulama yapılması ',
      'dsikki': 'Burkulan bölgeye buz torbası konulması ',
      'cevap': 'Burkulan bölgeye sıcak uygulama yapılması '
    },
    '15': {
      'soru':
          'Öfke, kızgınlık ve hırs gibi duygular aşağıda verilenlerden hangisine neden olur?',
      'asikki': 'Sürücünün vakit kazanmasına ',
      'bsikki': 'Kaza riskinin artmasına ',
      'csikki': 'Stresin azalmasına ',
      'dsikki': 'Trafiğin yoğunluğunun azalmasına ',
      'cevap': 'Kaza riskinin artmasına '
    },
    '16': {
      'soru': 'Kaza sonucu vücudun hangi kısımlarında çıkık görülebilir?',
      'asikki': 'Kafatası eklemlerinde ',
      'bsikki': 'Hareketli eklem yerlerinde ',
      'csikki': 'Kısa kemiğin ortasında ',
      'dsikki': 'Uzun kemiğin ortasında ',
      'cevap': 'Hareketli eklem yerlerinde '
    },
    '17': {
      'soru':
          'Araçta yakıt tasarrufu sağlamak için aşağıdakilerden hangisi yapılır?',
      'asikki': 'Motor yüksek devirde kullanılır. ',
      'bsikki': 'Trafiğin yoğun olduğu yollar seçilir ',
      'csikki': 'Aracın hızına göre uygun viteste gidilir. ',
      'dsikki':
          'Araç, yokuş aşağı inerken vites boşa alınıp kontak kapatılır. ',
      'cevap': 'Aracın hızına göre uygun viteste gidilir. '
    },
    '18': {
      'soru': 'Aşağıdakilerden hangisi koma halinin nedenlerinden değildir?',
      'asikki': 'Kafa yaralanmaları ',
      'bsikki': 'Beyin zarı iltihabı (Menenjit) ',
      'csikki': 'Kaburga çatlakları ',
      'dsikki': 'Zehirlenmeler ',
      'cevap': 'Kaburga çatlakları '
    },
    '19': {
      'soru':
          'Motor çalışır durumda iken aracın gösterge panelinde yağ basıncı ikaz ışığı yanıyorsa aşağıdakilerden hangisi yapılır?',
      'asikki': 'Motor devri düşürülür ',
      'bsikki': 'Motor devri yükseltilir. ',
      'csikki': 'Motor hemen durdurulur. ',
      'dsikki': 'Motor rölantide çalıştırılır. ',
      'cevap': 'Motor hemen durdurulur. '
    },
    '20': {
      'soru':
          'Aşağıdakilerden hangisi frenleme esnasında fren pedalının titremesine neden olur?',
      'asikki': 'Balataların ıslanması ',
      'bsikki': 'Balataların yeni olması ',
      'csikki': 'Fren ayarının düşük olması ',
      'dsikki': 'Disk veya kampana yüzeylerinin bozuk olması ',
      'cevap': 'Disk veya kampana yüzeylerinin bozuk olması '
    },
    '25': {
      'soru': 'Sorular bitti',
      'asikki': ' ',
      'bsikki': ' ',
      'csikki': ' ',
      'dsikki': ' ',
      'cevap': ' '
    },
  };
  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                sorular[_questionNumber.toString()]['soru'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  sorular[_questionNumber.toString()]['asikki'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (_questionNumber < sorular.length - 1) {
                      if (sorular[_questionNumber.toString()]['asikki'] ==
                          sorular[_questionNumber.toString()]['cevap']) {
                        scoreKeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                      } else {
                        scoreKeeper.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                      }

                      _questionNumber++;
                    }
                  });
                }),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              child: Text(
                sorular[_questionNumber.toString()]['bsikki'],
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (_questionNumber < sorular.length - 1) {
                    if (sorular[_questionNumber.toString()]['asikki'] ==
                        sorular[_questionNumber.toString()]['cevap']) {
                      scoreKeeper.add(Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                    } else {
                      scoreKeeper.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                    }

                    _questionNumber++;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              child: Text(
                sorular[_questionNumber.toString()]['csikki'],
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (_questionNumber < sorular.length - 1) {
                    if (sorular[_questionNumber.toString()]['csikki'] ==
                        sorular[_questionNumber.toString()]['cevap']) {
                      scoreKeeper.add(Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                    } else {
                      scoreKeeper.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                    }

                    _questionNumber++;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              child: Text(
                sorular[_questionNumber.toString()]['dsikki'],
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (_questionNumber < sorular.length - 1) {
                    if (sorular[_questionNumber.toString()]['dsikki'] ==
                        sorular[_questionNumber.toString()]['cevap']) {
                      scoreKeeper.add(Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                    } else {
                      scoreKeeper.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                    }

                    _questionNumber++;
                  }
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
