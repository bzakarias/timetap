import 'package:get/get.dart';
import 'package:timetap/models/quiz.dart';

class QuizController extends GetxController {
  List<Topic> topics = [
    Topic(
      id: 1,
      title: 'II. Világháború',
      questions: [
        Question(
          id: 1,
          imgPath: 'images/question001.webp',
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
          imgPath: 'images/question003.webp',
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
          imgPath: 'images/question004.jpeg',
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
    ),

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
    ),

    Topic(
      id: 3,
      title: '48-as forradalom',
      imgPath: 'images/topic003.webp',
    ),
    Topic(
      id: 4,
      title: 'Az ipari forradalom',
      imgPath: 'images/topic004.webp',

    ),
    Topic(
      id: 5,
      title: 'A Nagy Háború',
      imgPath: 'images/topic005.webp',
    ),
  ];
}