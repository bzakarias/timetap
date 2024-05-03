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
        Chapter(id: 1, title: 'A háború kitörése és előzményei', progress: 100,),
        Chapter(id: 2, title: 'A II. világháború története I.', desc: 'A II. világháború története a Szovjetunió megtámadásáig', progress: 100),
        Chapter(id: 3, title: 'A II. világháború története II.', desc: 'A II. világháború története a jaltai konferenciáig', progress: 46),
        Chapter(id: 4, title: 'A II. világháború története III.', desc: 'A fordulattól a világháború végéig'),
        Chapter(id: 5, title: 'Magyarország a II. világháborúban'),
        Chapter(id: 6, title: 'Az utóhatások és a béke megteremtése')
      ],
      events: [
        Event(
          id: 1,
          title: 'Az első világháború vége',
          date: '1918. november 11.',
          description: 'Az első világháborút lezáró Compiègne-i fegyverszünet aláírása',
          largeText: 'Az első világháború vége jelentős hatással volt a későbbi nemzetközi viszonyokra. A Compiègne-i erdőben aláírt fegyverszünet hivatalosan is lezárta a négy éven át tartó pusztító konfliktust. A háborút követően aláírt versailles-i békeszerződés kemény feltételeket szabott Németországnak, amelyek gazdasági nehézségeket és nemzeti megaláztatást okoztak, később ez jelentősen hozzájárult a nácik hatalomra jutásához.',
        ),
        Event(
          id: 2,
          title: 'Hitler hatalomra kerülése',
          date: '1933. január 30.',
          description: 'Adolf Hitler Németország kancellárává választása',
          largeText: 'Adolf Hitler kancellári kinevezése Németországban jelentős fordulópontot jelentett. A Weimari Köztársaság politikai instabilitása és a gazdasági válság keltette elégedetlenség teremtette meg a táptalajt a radikális ideológiák, így a nácizmus térnyeréséhez. Hitler hatalomra kerülésével megindultak azok a folyamatok, amelyek Európa és a világ sorsát gyökeresen megváltoztatták.'

        ),
        Event(
          id: 3,
          title: 'A müncheni egyezmény',
          date: '1938. szeptember 30.',
          description: 'Az angol, a francia, az olasz és a német vezetők megállapodása a Szudétavidék németek lakta területeinek visszacsatolásáról Németországhoz',
          largeText: 'A müncheni egyezmény a béke megőrzésének illúzióját keltette. Chamberlain brit miniszterelnök, Daladier francia elnök, Mussolini olasz diktátor és Hitler együtt döntöttek a Szudétavidék Németországhoz való csatolásáról, amit a németek lakta területek önrendelkezési jogával indokoltak. Ez az engedményezési politika később bizonyult tragikus hibának, mivel Hitler ezt követően további területeket szállt meg.',
        ),
        Event(
          id: 4,
          title: 'Molotov–Ribbentrop paktum',
          date: '1939. augusztus 23.',
          description: 'A Szovjetunió és a Harmadik Birodalom közötti megnemtámadási egyezmény',
          largeText: 'Ez a megnemtámadási szerződés a Szovjetunió és Németország között jött létre. A paktum titkos záradéka Kelet-Európa felosztását is tartalmazta, ami lehetővé tette a két hatalom számára, hogy területeket szerezzenek meg Lengyelország és más országok rovására. Ez a megállapodás megmutatta, hogy milyen kiszámíthatatlan és opportunista volt a nemzetközi politika ebben az időszakban.',
        ),
        Event(
          id: 5,
          title: 'Lengyelország megtámadása',
          date: '1939. szeptember 1.',
          description: 'A német hadsereg támadása Lengyelország ellen, a második világháború kezdeteként',
          largeText: 'Németország támadása Lengyelország ellen jelentette a második világháború kezdetét. Ez a lépés gyorsan vezetett a brit és francia hadüzenethez Németországnak, amivel formálisan megkezdődött a globális konfliktus. A villámháború (Blitzkrieg) taktikáját alkalmazva a német erők gyorsan áttörték a lengyel védelmet.',
        ),
        Event(
          id: 6,
          title: 'A Pearl Harbor-i támadás',
          date: '1941. december 7.',
          description: 'Japán légicsapása az amerikai flotta ellen, az Egyesült Államok bekapcsolódása a háborúba',
          largeText: 'Japán támadása Pearl Harbor ellen az Egyesült Államokat is bevonultatta a második világháborúba. Ez az esemény drámaian megváltoztatta az Egyesült Államok addigi elszigeteltségpolitikáját, és az amerikai gazdasági és katonai erőforrások bekapcsolódása döntő jelentőségűvé vált a háború kimenetelében.',
        ),
        Event(
          id: 7,
          title: 'A normandiai partraszállás',
          date: '1944. június 6.',
          description: 'A szövetségesek partraszállása Franciaországban, a második világháború egyik legnagyobb hadmûvelete',
          largeText: 'A normandiai partraszállás, vagy D-nap, a szövetséges erők egyik legnagyobb és legbonyolultabb hadművelete volt. Ennek során nyílt meg a második front Európában, ami jelentős lépés volt a náci Németország legyőzése felé. A művelet komplexitása és a katonai erőfeszítés mértéke példa nélküli volt a történelemben.',
        ),
        Event(
          id: 8,
          title: 'A berlini ostrom vége',
          date: '1945. május 2.',
          description: 'A szovjet csapatok elfoglalják Berlin városát, a második világháború európai szakaszának befejezése',
          largeText: 'A berlini ostrom a háború európai színterén az egyik utolsó nagy csata volt, amelynek során a szovjet csapatok elfoglalták a német fővárost. Berlin elfoglalása jelentős pszichológiai és politikai győzelem volt, amely gyakorlatilag véget vetett a háborúnak Európában.'
        ),
        Event(
          id: 9,
          title: 'A japán kapituláció',
          date: '1945. szeptember 2.',
          description: 'Japán aláírja a feltétel nélküli kapitulációt, a második világháború vége',
          largeText: 'A japán kapitulációval zárult le hivatalosan a második világháború. Az Egyesült Államok által ledobott atombombák, Hirosimára és Nagaszakira, valamint a Szovjetunió hadüzenete Japánnak, jelentős nyomást gyakoroltak a japán kormányra, hogy feladják a harcot. A kapituláció a háború egyik legtragikusabb és legvitathatóbb epizódját is jelenti.',
        ),
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
        Chapter(id: 7, title: 'Róma', desc: 'Köztársaság hét dombon'),
        Chapter(id: 8, title: 'Oszd meg és uralkodj!'),
        Chapter(id: 9, title: 'Marius és Sulla. A római hadsereg', desc: 'Öszvérek és halállisták'),
        Chapter(id: 10, title: 'Az I. triumvirátus', desc: 'Caesar, Pompeius, Crassus'),
        Chapter(id: 11, title: 'A principatus rendszere'),
        Chapter(id: 112, title: 'Római civilizáció és életmód. Pannonia'),
        Chapter(id: 113, title: 'A kereszténység születése és elterjedése', desc: 'Az Ember Fia'),
        Chapter(id: 114, title: 'A Római Birodalom bukása')
      ],
      events: [
        Event(
          id: 10,
          title: 'A Római Köztársaság alapítása',
          date: 'Kr. e. 509',
          description: 'A Római Köztársaság hivatalos kezdete, amikor a rómaiak elűzték az utolsó etruszk királyt, Tarquinius Superbust, és létrehozták a köztársaságot, amely senatusra és választott tisztségviselőkre épült.',
          largeText: 'Az első római köztársaság megalakulása egy kulcsfontosságú fordulópont volt Róma történelmében. A köztársaságot az etruszk királyság megdöntése után hozták létre, amikor a rómaiak elűzték Tarquinius Superbust, az utolsó etruszk királyt. Ez a változás radikálisan átalakította Róma politikai szerkezetét, bevezetve a senatust és a választott tisztségviselőket, mint alapvető intézményeket. A köztársaság megteremtette a hatalmi ágak szétválasztásának és a polgári szabadságjogoknak az alapjait, amelyek hozzájárultak a városállam későbbi terjeszkedéséhez és virágzásához.',
        ),
        Event(
          id: 11,
          title: 'Caesar kinevezése életre szóló diktátorrá',
          date: 'Kr. e. 44.',
          description: 'Julius Caesar kinevezése életre szóló diktátorrá, amely a köztársaság hanyatlásának és a birodalom kezdetének számított.',
          largeText: 'Julius Caesar életre szóló diktátorrá válása mélyen megosztotta a római társadalmat és a köztársaság politikai rendszerének hanyatlását jelezte. Caesar ambíciói és a hatalom centralizálása, amelyet a senatus és a hagyományos köztársasági értékek ellenében ért el, a köztársaság alapelveivel szemben állt. Ezen időszak politikai és társadalmi feszültségei kulmináltak Caesar meggyilkolásában Kr. e. március 15-én, ami mély válságba sodorta Rómát, és végül a birodalmi rendszer felé terelte az államot.',
        ),
        Event(
          id: 12,
          title: 'Augustus uralkodásának kezdete',
          date: 'Kr. e. 27.',
          description: 'Augustus (Octavianus) kinevezése a Római Birodalom első császárjává, amely a köztársaság hivatalos végét és a principatus rendszerének kezdetét jelentette.',
          largeText: 'Octavianus, Caesar unokaöccse és örököse, Kr. e. 27-ben Augustus császár néven lépett a történelem színpadára, ezzel hivatalosan is véget vetve a Római Köztársaságnak és elindítva a Római Birodalom principatus rendszerét. Augustus hatalomra jutása az állam átalakításával járt, amely magában foglalta a hadsereg, a pénzügyek és az igazságszolgáltatás reformját. Ezen intézkedések stabilizálták a birodalmat és lehetővé tették hosszú távú békéjét és virágzását.',
        ),
        Event(
          id: 13,
          title: 'A pax romana kezdete',
          date: 'Kr. e. 27.',
          description: 'Augustus uralkodásának kezdetétől számított mintegy 200 éves béke és stabilitás korszaka, amely a birodalom virágzását és kulturális fejlődését hozta.',
          largeText: 'A pax romana, vagyis a "római béke" Augustus uralkodásának kezdetével vette kezdetét, és mintegy 200 évig tartott. Ez a korszak a Római Birodalom történetének egyik legstabilabb és legvirágzóbb időszaka volt, amely alatt jelentős építkezések, úthálózat-fejlesztések, és gazdasági fejlődés zajlott. A kultúra, művészet és tudományos élet virágzása mellett a birodalom belső stabilitása és a határok biztonsága is megteremtődött.',
        ),
        Event(
          id: 14,
          title: 'A Római Birodalom területének csúcspontja',
          date: 'Kr. u. 117.',
          description: 'Traianus császár uralkodásának idején a birodalom területe elérte a legnagyobb kiterjedését, amely Skóciától a Perzsa-öbölig terjedt.',
          largeText: 'Traianus császár uralkodása alatt a Római Birodalom elérte területi kiterjedésének csúcspontját, amikor is a birodalom a mai Nagy-Britanniától a Közel-Keleten át Észak-Afrikáig és a Perzsa-öbölig terjedt. Traianus hódításai és a birodalmi infrastruktúra fejlesztései kiterjesztették Róma befolyását és gazdasági erejét, amely hosszú távon azonban fenntarthatatlanná vált és kihívásokat jelentett a birodalom számára.',
        ),
        Event(
          id: 15,
          title: 'A Nyugatrómai Birodalom bukása',
          date: 'Kr. u. 476.',
          description: 'A Nyugatrómai Birodalom hivatalos bukása, amelyet Odoaker germán király elfoglalása és Romulus Augustulus utolsó császár megdöntése jelentett.',
          largeText: 'A Nyugatrómai Birodalom bukása egybeesett Odoaker germán vezér általi hatalomátvétellel, aki megdöntötte Romulus Augustulust, az utolsó nyugatrómai császárt. Ez a történelmi esemény formálisan jelölte a Nyugatrómai Birodalom végét és a középkor kezdetét Európában. A birodalom bukása számos tényező – köztük politikai gyengeség, gazdasági problémák és külső támadások – együttes eredményeként következett be, ami mély hatást gyakorolt az európai történelemre és a következő évezred kulturális dinamikájára.'
        ),
      ],
    ),

    // 1848 Revolution
    Topic(
      id: 3,
      title: '48-49-es forradalom és szabadságharc',
      imgPath: 'images/topic003.webp',
      events: [
        Event(
          id: 16,
          title: 'A pesti forradalom kitörése',
          date: '1848. március 15.',
          description: 'A márciusi ifjak által vezetett forradalom kitörése Pesten, melynek során a magyar reformkövetelések kinyilvánításra jutottak.',
          largeText: 'A pesti forradalom 1848. március 15-én tört ki, amikor is a márciusi ifjak csoportja, köztük Petőfi Sándor és Jókai Mór, nyilvánosan felolvasták a 12 pontot és Petőfi a Nemzeti dalt. Ez a nap jelentette Magyarország felébredését a nemzeti öntudatra és reformkövetelések megfogalmazását, amely a polgári átalakulás és a Habsburg birodalommal szembeni függetlenségi igény kinyilvánítására irányult.',
        ),
        Event(
          id: 17,
          title: 'Az áprilisi törvények elfogadása',
          date: '1848. április 11.',
          description: 'A Habsburg uralkodó, I. Ferenc József szentesíti az áprilisi törvényeket, melyek Magyarország modernizálását célozzák.',
          largeText: 'Az áprilisi törvények, melyeket 1848. április 11-én V. Ferdinand hagyott jóvá, Magyarország újkori történetének egyik alapkövei. Ezek a törvények kiterjesztették a polgári és politikai szabadságjogokat, megszüntették a jobbágyi függőséget, és bevezették a felelős kormányzatot, ezzel lényegében modern állammá alakítva Magyarországot.',
        ),
        Event(
          id: 18,
          title: 'Az első fegyveres összecsapás',
          date: '1848. szeptember 29.',
          description: 'A pákozdi csata, mely során a magyar csapatok megállítják a bécsi kormány által küldött osztrák sereget.',
          largeText: 'A pákozdi csata, amely 1848. szeptember 29-én zajlott, az első jelentős fegyveres összecsapás volt az osztrák csapatok és a magyar honvédsereg között. A csata Magyarország függetlenségi törekvéseinek védelmében döntő jelentőségű volt, mivel a magyar erők sikeresen megállították a bécsi kormány által küldött sereget.',
        ),
        Event(
          id: 19,
          title: 'Kossuth Lajos kinevezése kormányzónak',
          date: '1849. április 14.',
          description: 'Kossuth Lajos kinevezése Magyarország kormányzójává és a függetlenség kihirdetése.',
          largeText: 'Kossuth Lajos, a forradalom és szabadságharc karizmatikus vezéralakja, 1849. április 14-én lett Magyarország kormányzója. Ekkor hirdette ki a függetlenségi nyilatkozatot, amely kinyilvánította Magyarország teljes szuverenitását a Habsburg Birodalomtól.',
        ),
        Event(
          id: 20,
          title: 'A szabadságharc csúcspontja',
          date: '1849. április-május',
          description: 'A tavaszi hadjárat során a magyar seregek sorozatban aratnak győzelmeket az osztrák és az előrenyomuló orosz csapatok ellen.',
          largeText: '1849 tavaszán a magyar honvédsereg sorozatos győzelmeket aratott az osztrák és az előrenyomuló orosz csapatok ellen. Ez az időszak, ismert mint a tavaszi hadjárat, a magyar szabadságharc csúcspontját jelentette, mely fokozta a nemzeti öntudatot és a küzdelmek hevét.',
        ),
        Event(
          id: 21,
          title: 'A világosi fegyverletétel',
          date: '1849. augusztus 13.',
          description: 'Görgei Artúr tábornok Világosnál leteszi a fegyvert az orosz és az osztrák csapatok előtt, ezzel véget ér a szabadságharc.',
          largeText: 'A szabadságharc tragikus vége 1849. augusztus 13-án következett be, amikor Görgei Artúr tábornok Világosnál fegyvert adott az osztrák és orosz csapatoknak. Ez a fegyverletétel gyakorlatilag véget vetett a magyar függetlenségi harcnak és kezdetét jelentette a megtorlások időszakának.',
        ),
        Event(
          id: 22,
          title: 'Az aradi vértanúk kivégzése',
          date: '1849. október 6.',
          description: 'A 13 aradi vértanú kivégzése, köztük Batthyány Lajos miniszterelnöké, aki a magyar függetlenségi törekvések egyik vezéralakja volt.',
          largeText: 'Az aradi vértanúk, köztük több magas rangú honvéd tiszt és Batthyány Lajos, az első felelős magyar kormány miniszterelnöke, kivégzése 1849. október 6-án mély és tartós sebet ejtett a magyar nemzeti tudatban. Ez a nap a magyar történelem egyik legfájdalmasabb emléke marad, mely az elnyomás és az áldozatvállalás szimbólumává vált.'
        )
      ],
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
      events: [
        Event(
          id: 1,
          title: 'A szarajevói merénylet',
          date: '1914. június 28.',
          description: 'Gavrilo Princip szerb nacionalista meggyilkolja Ferenc Ferdinánd osztrák-magyar trónörököst, ami kiváltó oka a világháborúnak.',
          largeText: 'A szarajevói merénylet, ami 1914. június 28-án történt, Gavrilo Princip boszniai szerb nacionalista által elkövetett gyilkosság volt, amely Ferenc Ferdinánd osztrák-magyar trónörökös és felesége életét követelte. Ez az esemény láncreakciót indított el Európában, amely a szövetségi rendszerek aktiválódásához, és végül az első világháború kitöréséhez vezetett.'
        ),
        Event(
          id: 2,
          title: 'Az első világháború kitörése',
          date: '1914. július 28.',
          description: 'Az Osztrák-Magyar Monarchia hadat üzen Szerbiának, ezzel kezdetét veszi az első világháború.',
          largeText: '1914. július 28-án az Osztrák-Magyar Monarchia formálisan hadat üzent Szerbiának, válaszul a szarajevói merényletre. Ez az esemény gyorsan szélesedett konfliktussá, mivel az európai nagyhatalmak, kötelezettségeik és szövetségeik révén, egymás után léptek be a háborúba, ami végül globális méretűvé vált.'
        ),
        Event(
          id: 3,
          title: 'A somme-i csata',
          date: '1916. július 1. - november 18.',
          description: 'Egyike a háború legvéresebb csatáinak, ahol az összesített áldozatszám elérte a több mint egymilliót.',
          largeText: 'A somme-i csata, amely 1916 júliusától novemberéig tartott, az első világháború egyik legnagyobb és legvéresebb ütközete volt. Több mint egymillió katona vesztette életét ebben a kimerítő és brutális harcban, amely a nyugati fronton a brit és francia erők kísérlete volt a német vonalak áttörésére.'
        ),
        Event(
          id: 4,
          title: 'Az Egyesült Államok belépése a háborúba',
          date: '1917. április 6.',
          description: 'Az Egyesült Államok hadat üzen Németországnak, részben a Lusitania elsüllyesztése és a német tengeralattjáró-háború miatt.',
          largeText: 'Az Egyesült Államok 1917. április 6-án lépett be az első világháborúba, miután Németország folytatott korlátlan tengeralattjáró-háborút, amely az amerikai polgári hajózás veszélyeztetését jelentette. Az USA belépése jelentős erőforrásokat és friss erőket hozott a szövetségesek oldalára, ami létfontosságú volt a háború kimenetelének alakításában.'
        ),
        Event(
          id: 5,
          title: 'A brest-litovszki béke',
          date: '1918. március 3.',
          description: 'Oroszország különbéke megkötése Németországgal, ami lehetővé teszi Németország számára, hogy koncentráljon a nyugati fronton.',
          largeText: 'A brest-litovszki békeszerződés 1918. március 3-án jött létre Oroszország és a központi hatalmak között, ami lehetővé tette Németország számára, hogy katonai erőfeszítéseit a nyugati frontra koncentrálja. Ez a szerződés az orosz forradalmi kormány által történt, amely ki akarta vonni az országot a háborúból.'
        ),
        Event(
          id: 6,
          title: 'Az első világháború vége',
          date: '1918. november 11.',
          description: 'A compiègne-i fegyverszünet aláírása, amely hivatalosan véget vet az első világháborúnak.',
          largeText: 'Az első világháború 1918. november 11-én ért véget a compiègne-i fegyverszünet aláírásával, amelyet a szövetséges erők és Németország írtak alá. Ez a nap, amelyet ma Veteránok napjaként és Fegyverszüneti napként ünnepelnek, jelentette a négy évig tartó globális konfliktus hivatalos befejezését.'
        ),
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