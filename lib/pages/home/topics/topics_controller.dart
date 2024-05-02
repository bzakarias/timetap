import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:timetap/models/quiz.dart';

class TopicsController extends GetxController {
  List<Topic> topics = [
    // Second World War
    Topic(
      id: 1,
      title: 'II. Világháború',
      imgPath: 'images/wwii.webp',
      questions: [
        Question(
          id: 1,
          imgPath: 'images/question_wwii_001.webp',
          questionText: 'Melyik eseményt emlegetjük a második világháború kezdeteként?',
          answers: [
            Answer(
              id: 1,
              answerText: 'A németek Lengyelország elleni invázóját 1939-ben',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Pearl Harbor bombázását 1941-ben',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'A versailles-i békeszerződés aláírását 1919-ben',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Az angliai csatát 1940-ben',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 2,
          questionText: 'Mely ország nem volt tagja a Tengelyhatalmaknak?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Olaszország',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Szovjetunió',
              correct: true,
            ),
            Answer(
              id: 3,
              answerText: 'Japán',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Németország',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 3,
          imgPath: 'images/question_wwii_003.webp',
          questionText: 'Mi volt a D-nap fõ célja?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Párizs felszabadítása',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Németország közvetlen megszállása',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Új frontot nyitni Kelet-Európában',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Új frontot nyitni Nyugat-Európában',
              correct: true,
            ),
          ],
        ),
        Question(
          id: 4,
          imgPath: 'images/question_wwii_004.jpeg',
          questionText: 'Melyik csata bizonyult döntõnek a Szövetségesek javára a keleti fronton?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Kurszki csata',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Sztálingrádi csata',
              correct: true,
            ),
            Answer(
              id: 3,
              answerText: 'Leningrádi csata',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Moszkvai csata',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 5,
          questionText: 'Melyik projekt vezetett az atombomba kifejlesztéséhez?',
          answers: [
            Answer(
              id: 1,
              answerText: 'A Manhattan projekt',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Az Enigma projekt',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Az Overlord projekt',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'A V-2 projekt',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 6,
          questionText: 'Ki volt a brit miniszterelnök a második világháború kezdetén?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Winston Churchill',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Neville Chamberlain',
              correct: true,
            ),
            Answer(
              id: 3,
              answerText: 'Clement Attlee',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Anthony Eden',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 7,
          questionText: 'Az alábbiak közül melyik ország maradt semleges a második világháború alatt?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Lengyelország',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Franciaország',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Svájc',
              correct: true,
            ),
            Answer(
              id: 4,
              answerText: 'Norvégia',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 8,
          questionText: 'Melyik volt az utolsó fõ német offenzíva a keleti fronton?',
          answers: [
            Answer(
              id: 1,
              answerText: 'A kurszki csata',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Az ardenneki offenzíva',
              correct: true,
            ),
            Answer(
              id: 3,
              answerText: 'A Barbarossa hadmûvelet',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Az angliai csata',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 9,
          questionText: 'Melyik háborút lezáró konferencián döntöttek Németország sorsáról?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Jaltai konferencia',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Potsdam-i konferencia',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Teheráni konferencia',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Párizs környéki konferenciák',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 10,
          questionText: 'Mi volt a második világháború egyik fõ következménye?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Megalakul a Nemzetek Szövetsége',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'A Szovjetunió felbomlása',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'A hidegháború kezdete',
              correct: true,
            ),
            Answer(
              id: 4,
              answerText: 'A vietnámi háború azonnali kezdete',
              correct: false,
            ),
          ],
        ),
      ],
      chapters: [
        Chapter(id: 1, title: 'A háború kitörése és előzményei'),
        Chapter(id: 2, title: 'A háború Európában'),
        Chapter(id: 3, title: 'A háború a Csendes-óceánon'),
        Chapter(id: 4, title: 'A háború vége Európában'),
        Chapter(id: 5, title: 'A háború vége a Csendes-óceánon'),
        Chapter(id: 6, title: 'Az utóhatások és a béke megteremtése')
      ],
    ),

    // Roman Empire
    Topic(
      id: 2,
      title: 'A Római Birodalom',
      imgPath: 'images/topic002.webp',
      questions: [
        Question(
          id: 1,
          questionText: 'Ki volt Róma első császára?',
          imgPath: 'images/question_roma_001.webp',
          answers: [
            Answer(id: 1, answerText: 'Julius Caesar', correct: false),
            Answer(id: 2, answerText: 'Nero', correct: false),
            Answer(id: 3, answerText: 'Augustus', correct: true),
            Answer(id: 4, answerText: 'Tiberius', correct: false),
          ],
        ),
        Question(
          id: 2,
          questionText: 'Mikor volt a Római Birodalom bukása?',
          imgPath: 'images/question_roma_002.webp',
          answers: [
            Answer(id: 1, answerText: '44 Kr.e.', correct: false),
            Answer(id: 2, answerText: '27 Kr.e.', correct: false),
            Answer(id: 3, answerText: '1453', correct: false),
            Answer(id: 4, answerText: '476', correct: true),
          ],
        ),
        Question(
          id: 3,
          questionText: 'Mi volt a fő célja a Pax Romana politikának?',
          imgPath: 'images/question_roma_003.webp',
          answers: [
            Answer(id: 1, answerText: 'A birodalom belső zavargásainak csökkentése', correct: false),
            Answer(id: 2, answerText: 'Kiterjedt béke és stabilitás biztosítása a birodalomban', correct: true),
            Answer(id: 3, answerText: 'Katonai expanzió folytatása', correct: false),
            Answer(id: 4, answerText: 'Gazdasági válság kezelése', correct: false),
          ],
        ),
        Question(
          id: 4,
          questionText: 'Melyik csata jelentette a Római Birodalom egyik legnagyobb vereségét?',
          imgPath: 'images/question_roma_004.webp',
          answers: [
            Answer(id: 1, answerText: 'Cannaei csata', correct: true),
            Answer(id: 2, answerText: 'Actiumi csata', correct: false),
            Answer(id: 3, answerText: 'Zamai csata', correct: false),
            Answer(id: 4, answerText: 'Milviusi-hídi csata', correct: false),
          ],
        ),
        Question(
          id: 5,
          questionText: 'Melyik építmény volt elsősorban gladiátorviadalok helyszíne?',
          imgPath: 'images/question_roma_005.webp',
          answers: [
            Answer(id: 1, answerText: 'Pantheon', correct: false),
            Answer(id: 2, answerText: 'Colosseum', correct: true),
            Answer(id: 3, answerText: 'Forum Romanum', correct: false),
            Answer(id: 4, answerText: 'Circus Maximus', correct: false),
          ],
        ),
        Question(
          id: 6,
          questionText: 'Ki volt Róma utolsó császára Nyugaton?',
          imgPath: 'images/question_roma_006.webp',
          answers: [
            Answer(id: 1, answerText: 'Julianus', correct: false),
            Answer(id: 2, answerText: 'Constantinus', correct: false),
            Answer(id: 3, answerText: 'Romulus Augustulus', correct: true),
            Answer(id: 4, answerText: 'Theodosius', correct: false),
          ],
        ),
        Question(
          id: 7,
          questionText: 'Melyik törvényi kódex fektette le a római jog alapjait?',
          imgPath: 'images/question_roma_007.webp',
          answers: [
            Answer(id: 1, answerText: 'Hammurábi törvényei', correct: false),
            Answer(id: 2, answerText: 'A Tizenkéttáblás törvények', correct: true),
            Answer(id: 3, answerText: 'Justinianus törvénykönyve', correct: false),
            Answer(id: 4, answerText: 'Napóleon törvénykönyve', correct: false),
          ],
        ),
        Question(
          id: 8,
          questionText: 'Melyik császár időszakában érte el területileg a Római Birodalom a legnagyobb kiterjedését?',
          imgPath: 'images/question_roma_008.webp',
          answers: [
            Answer(id: 1, answerText: 'Claudius', correct: false),
            Answer(id: 2, answerText: 'Traianus', correct: true),
            Answer(id: 3, answerText: 'Hadrianus', correct: false),
            Answer(id: 4, answerText: 'Nero', correct: false),
          ],
        ),
        Question(
          id: 9,
          questionText: 'Kinek a nevével vált ismertté a híres rabszolga felkelés?',
          imgPath: 'images/question_roma_009.webp',
          answers: [
            Answer(id: 1, answerText: 'Vercingetorix', correct: false),
            Answer(id: 2, answerText: 'Boudicca', correct: false),
            Answer(id: 3, answerText: 'Spartacus', correct: true),
            Answer(id: 4, answerText: 'Arminius', correct: false),
          ],
        ),
        Question(
          id: 10,
          questionText: 'Melyik esemény jelölte a Római Köztársaság végét, és egyben a Római Birodalom kezdetét?',
          imgPath: 'images/question_roma_001.webp',
          answers: [
            Answer(id: 1, answerText: 'Caesar meggyilkolása', correct: true),
            Answer(id: 2, answerText: 'Augustus hatalomra kerülése', correct: false),
            Answer(id: 3, answerText: 'Spartacus felkelése', correct: false),
            Answer(id: 4, answerText: 'A második pun háború vége', correct: false),
          ],
        ),
      ],
      chapters: [
        Chapter(id: 7, title: 'A Római Birodalom kialakulása és terjeszkedése'),
        Chapter(id: 8, title: ' birodalom fénykora és gazdasági fejlődése'),
        Chapter(id: 9, title: 'A birodalom válsága és belső problémái'),
        Chapter(id: 10, title: 'A birodalom szétesése és a barbár inváziók'),
        Chapter(id: 11, title: 'A Római Birodalom utóhatásai és öröksége'),
      ],
    ),

    // 1848 Revolution
    Topic(
      id: 3,
      title: '48-49-es forradalom és szabadságharc',
      imgPath: 'images/topic003.webp',
      questions: [
        Question(
          id: 1,
          questionText: 'Melyik esemény indította el az 1848-as forradalmak sorozatát?',
          answers: [
            Answer(
              id: 1,
              answerText: 'A párizsi forradalom kirobbanása',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'A bécsi forradalom kirobbanása',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'A frankfurti parlament megalakulása',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'A pesti forradalom kirobbanása',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 2,
          questionText: 'Melyik országban nem volt jelentős a forradalmi mozgalom 1848-ban?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Franciaország',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Oroszország',
              correct: true,
            ),
            Answer(
              id: 3,
              answerText: 'Magyarország',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Olaszország',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 3,
          questionText: 'Mi volt a célja a pesti forradalomnak 1848-ban?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Teljes függetlenség kivívása',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Alkotmányos reformok és sajtószabadság',
              correct: true,
            ),
            Answer(
              id: 3,
              answerText: 'A monarchia teljes megdöntése',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'A feudális rendszer teljes eltörlése',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 4,
          questionText: 'Melyik csata volt döntő az olasz függetlenségi háborúk során?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Custoza csatája',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Solferino csatája',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Magenta csatája',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Novara csatája',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 5,
          questionText: 'Melyik dokumentum foglalta össze a magyar forradalmárok követeléseit?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Áprilisi törvények',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Pesti nyilatkozat',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Debreceni program',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Kossuth-kiáltvány',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 6,
          questionText: 'Ki volt a magyar forradalom egyik vezető alakja?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Kossuth Lajos',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Ferenc József',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Széchenyi István',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Wesselényi Miklós',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 7,
          questionText: 'Melyik ország maradt semleges az 1848-as forradalmak idején?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Németország',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Franciaország',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Svédország',
              correct: true,
            ),
            Answer(
              id: 4,
              answerText: 'Olaszország',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 8,
          questionText: 'Melyik esemény zárta le a forradalmi időszakot Magyarországon?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Világosi fegyverletétel',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Schwechati csata',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Az őszi hadjárat kezdete',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'A tavaszi hadjárat vége',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 9,
          questionText: 'Melyik konferencián döntöttek az 1848-as forradalmak utáni Európa újrarendezéséről?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Párizsi békekonferencia',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Olasz hadi konferencia',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Bécsi kongresszus',
              correct: true,
            ),
            Answer(
              id: 4,
              answerText: 'Berlini konferencia',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 10,
          questionText: 'Mi volt az 1848-as forradalmak egyik fő következménye?',
          answers: [
            Answer(
              id: 1,
              answerText: 'A polgári reformok elterjedése Európában',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'A szocialista mozgalmak erősödése',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'A nacionalizmus elterjedése',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Az ipari forradalom meggyorsulása',
              correct: false,
            ),
          ],
        ),
      ],
      chapters: [
        Chapter(id: 11, title: 'Az 1848-49-es forradalom előzményei'),
        Chapter(id: 12, title: 'A szabadságharc kitörése és terjedése'),
        Chapter(id: 13, title: 'Az 1848-49-es forradalom katonai eseményei'),
        Chapter(id: 14, title: 'A forradalom bukása és az osztrák megtorlás'),
        Chapter(id: 15, title: 'Az 1848-49-es szabadságharc utóhatásai'),
      ],
    ),

    // Industrial Revolution
    Topic(
      id: 1,
      title: 'Ipari forradalom',
      imgPath: 'images/topic004.webp',
      chapters: [
        Chapter(id: 16, title: 'Az ipari forradalom kezdete és elterjedése'),
        Chapter(id: 17, title: 'Az ipari forradalom hatása a társadalomra'),
        Chapter(id: 18, title: 'Az ipari forradalom technológiai újításai'),
        Chapter(id: 19, title: 'Az ipari forradalom gazdasági hatásai'),
        Chapter(id: 20, title: 'Az ipari forradalom utóhatásai és a modernizáció'),
      ],
      questions: [
        Question(
          id: 1,
          questionText: 'Melyik találmány jelentette az ipari forradalom kezdetét?',
          answers: [
            Answer(
              id: 1,
              answerText: 'A gőzgép megalkotása',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Az elektromosság felfedezése',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'A fonógép megjelenése',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'A modern öntödei technika bevezetése',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 2,
          questionText: 'Mely országban kezdődött az ipari forradalom?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Anglia',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Németország',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Franciaország',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Amerikai Egyesült Államok',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 3,
          questionText: 'Mi volt a gőzgép fő hatása az iparra?',
          answers: [
            Answer(
              id: 1,
              answerText: 'A mezőgazdaság automatizálása',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'A szállítási sebesség növelése',
              correct: true,
            ),
            Answer(
              id: 3,
              answerText: 'A munkaórák csökkentése',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Az energiafogyasztás csökkentése',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 4,
          questionText: 'Melyik város vált az ipari forradalom egyik központjává Angliában?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Manchester',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'London',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Birmingham',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Liverpool',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 5,
          questionText: 'Melyik találmány forradalmasította a textilipart?',
          answers: [
            Answer(
              id: 1,
              answerText: 'A Spinning Jenny',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'A gőzmozdony',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'A villanykörte',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'A hidraulikus sajt',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 6,
          questionText: 'Ki volt az ipari forradalom egyik vezető alakja?',
          answers: [
            Answer(
              id: 1,
              answerText: 'James Watt',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Isaac Newton',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Thomas Edison',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Alexander Graham Bell',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 7,
          questionText: 'Melyik országban tört ki az első ipari forradalom utáni munkásmozgalom?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Anglia',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Németország',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Franciaország',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Oroszország',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 8,
          questionText: 'Melyik ipari forradalom utáni esemény hívta fel a figyelmet a munkások helyzetére?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Chartista mozgalom',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Októberi forradalom',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Júliusi forradalom',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Márciusi forradalom',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 9,
          questionText: 'Melyik konferencián tettek kísérletet az európai nagyhatalmak az ipari forradalom hatásainak kezelésére?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Bécsi kongresszus',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Párizsi békekonferencia',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Berlini kongresszus',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Kongresszus a berlini kongresszus után',
              correct: true,
            ),
          ],
        ),
        Question(
          id: 10,
          questionText: 'Milyen hatással volt az ipari forradalom a társadalomra?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Növelte a társadalmi egyenlőtlenséget',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Csökkentette a társadalmi rétegződést',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Növelte a munkanélküliséget',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Csökkentette a gazdasági fejlődést',
              correct: false,
            ),
          ],
        ),
      ],
    ),

    // The Great War (WWI)
    Topic(
      id: 1,
      title: 'A Nagy Háború (I. világháború)',
      imgPath: 'images/topic005.webp',
      chapters: [
        Chapter(id: 21, title: 'Az Első Világháború Kitörése és Hadifrontok Kialakulása'),
        Chapter(id: 22, title: 'A Tengelyhatalmak és a Szövetségesek Küzdelme'),
        Chapter(id: 23, title: 'Az Árkok Háborúja és a Gáztámadások Túlélése'),
        Chapter(id: 24, title: 'A Háború Fronton Kívül: A Tengeri Ütközetek és A Légiharcok Kora'),
        Chapter(id: 25, title: 'A Háború Vége és a Békeszerződések'),

      ],
      questions: [
        Question(
          id: 1,
          questionText: 'Melyik esemény indította el az első világháborút?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Az osztrák trónörökös, Ferenc Ferdinánd meggyilkolása',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'A berlini blokád kihirdetése',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Az Osztrák-Magyar Monarchia összeomlása',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Az angol flotta támadása a német kikötőkre',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 2,
          questionText: 'Melyik ország volt az első, amely hadat üzent egy másik nagyhatalomnak az első világháborúban?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Osztrák-Magyar Monarchia',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Németország',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Oroszország',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Egyesült Királyság',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 3,
          questionText: 'Melyik csata volt az első világháború egyik legvéresebb ütközete?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Verduni csata',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Marne-i csata',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Tannenbergi csata',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Somme-i csata',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 4,
          imgPath: 'images/question_wwi_004.jpeg',
          questionText: 'Melyik évben csatlakozott az Amerikai Egyesült Államok az első világháborúhoz?',
          answers: [
            Answer(
              id: 1,
              answerText: '1917',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: '1915',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: '1916',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: '1918',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 5,
          questionText: 'Mi volt az első világháború egyik fő kiváltó oka?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Nacionalizmus',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: 'Imperializmus',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Gazdasági válság',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Szarajevói merénylet',
              correct: true,
            ),
          ],
        ),
        Question(
          id: 6,
          questionText: 'Melyik ország vezette a központi hatalmakat az első világháborúban?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Németország',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Oroszország',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Egyesült Királyság',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Franciaország',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 7,
          questionText: 'Melyik volt az első világháború egyik legjelentősebb tengelyhatalma?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Németország',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Oroszország',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Ausztria-Magyar Monarchia',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Olaszország',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 8,
          questionText: 'Melyik évben kötöttek békét az első világháborúban?',
          answers: [
            Answer(
              id: 1,
              answerText: '1918',
              correct: false,
            ),
            Answer(
              id: 2,
              answerText: '1919',
              correct: true,
            ),
            Answer(
              id: 3,
              answerText: '1920',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: '1921',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 9,
          questionText: 'Melyik város volt az első világháborút lezáró békeszerződés aláírásának helyszíne?',
          answers: [
            Answer(
              id: 1,
              answerText: 'Versailles',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'Párizs',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'Bécs',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'Berlin',
              correct: false,
            ),
          ],
        ),
        Question(
          id: 10,
          questionText: 'Melyik volt az első világháború egyik legjelentősebb csatahajója?',
          answers: [
            Answer(
              id: 1,
              answerText: 'HMS Dreadnought',
              correct: true,
            ),
            Answer(
              id: 2,
              answerText: 'SMS Bismarck',
              correct: false,
            ),
            Answer(
              id: 3,
              answerText: 'USS Arizona',
              correct: false,
            ),
            Answer(
              id: 4,
              answerText: 'IJN Yamato',
              correct: false,
            ),
          ],
        ),
      ],
    )
  ];
}