class Databases {
  final String image;
  final String title;
  final String desc;
  final String serve;
  final String cate;
  final String khasiat;
  final String keamanan;
  final String peringatan;

  Databases({
    required this.image,
    required this.title,
    required this.desc,
    required this.serve,
    required this.cate,
    required this.khasiat,
    required this.keamanan,
    required this.peringatan,
  });
}

List<Databases> databaseContent = [
  Databases(
    image: 'assets/images/imghome/temulawak.png',
    title: 'Temulawak',
    desc:
        'Curcuma xanthorrhiza Roxb disebut juga temulawak, mengandung Kurkuminoid (1-2%) dan minyak atsiri dengan komponen xanthorrhizol (31.9%), ß-curcumene (17.1%), arcurcumene (13.2%), camphor (5.4%), γ-curcumene (2.6%), (Z)-γ-bisabolene (2.6%), and (E)-ß-farnesene (1.2%).',
    khasiat:
        'Secara empiris temulawak telah digunakan secara turun temurun di Indonesia untuk mengobati berbagai keluhan perut dan gangguan hati, demam dan sembelit, galaktogogue, diare berdarah, disentri, radang rektum, wasir, gangguan lambung yang disebabkan oleh dingin, luka yang terinfeksi, erupsi kulit, akne vulgaris, eksim, cacar dan anoreksia serta untuk mengurangi peradangan rahim setelah melahirkan.',
    serve:
        'Penggunaan empiris di Indonesia terutama untuk meredakan gangguan fungsi hati dapat dilakukan dengan merebus 25 g irisan temulawak segar dengan 500 mL air hingga tinggal 300 mL, diminum untuk sehari. Cara lain dapat dilakukan dengan mengambil 25 g rimpang segar, diparut, diperas, disaring dibagi tiga dan diminum untuk sehari.',
    cate: 'Nabati',
    keamanan:
        "1. European Medicine Agency melaporkan tidak ada efek samping serius yang dilaporkan sampai sekarang. Lebih lanjut komposisi kimia dari temulawak tidak memberikan alasan untuk masalah keamanan. \n\n2. Penggunaan temulawak pada wanita hamil dan selama menyusui tidak dianjurkan hingga ada data bahwa kurkumin dan/ atau metabolitnya dapat ditransfer melalui laktasi. \n\n3. Penggunaan pada penderita penyumbatan saluran empedu, cholangitis, batu empedu atau penyakit empedu lainnya sebaiknya berkonsultasi dengan dokter.",
    peringatan: 'Tidak Ada',
  ),
  Databases(
    image: 'assets/images/imghome/daunjambubiji.png',
    title: 'Daun Jambu Biji',
    desc:
        'Daun jambu biji mengandung flavonoid kuersetin, guajaverin (kuersetin-3-O-arabinoside) dan glikosida kuersetin lain, gallocatechin dan tanin asam elagat dan guavin A, C dan D. Mengandung pula kelompok senyawa triterpen termasuk asam ursolat dan asam oleonolat. Mengandung minyak atsiri dengan komponen utama 1,8-sineol dan α-pinene. Kandungan kimia ekstrak daun jambu biji dengan urutan dari paling besar yaitu asam kafeat, kuersetin, kaempferol, katekin, kuersitrin, asam klorogenat, rutin, luteolin, epikatekin, dan asam galat.',
    khasiat:
        'Di Indonesia secara tradisional digunakan untuk antidiare. Penelitian di Indonesia diprioritaskan sebagai antivirus, dengue. Pada Buku Cabe Puyang, jambu biji digunakan untuk disentri, lumpuh, mencret, radang lambung, sariawan, cucur darah tak henti-henti, keputihan (daun, kulit dan akarnya).\n Cara kerja: sebagai antibakteri, anti HIV, antioksidan, antiseptik. Indikasi: bakteria, candida, batuk, infeksi, inflamasi, malaria, parasit, salmonella, diare, shigella, radang tenggorokan.',
    serve:
        '15 gram daun segar atau daun kering direbus dengan 1 liter air selama 10 menit dan dihabiskan dalam 1 hari.',
    cate: 'Nabati',
    keamanan:
        "1. Efek yang tidak diinginkan: dapat menyebabkan konstipasi. Dilaporkan adanya dermatitis alergi setelah penggunaan eksternal sediaan teh dari tumbuhan ini. \n\n2. Hanya untuk penderita kencing manis yang telah ditetapkan dokter. Jangan digunakan lebih dari 30 hari. Tidak direkomendasikan untuk penggunaan pada anak-anak, wanita hamil dan menyusui. Hipersensitif atau alergi terhadap tumbuhan ini. \n\n3. Interaksi Obat: Secara teoretis dapat meningkatkan potensi obat-obatan kolesterol, depresi, diabetes, gangguan tidur dan diare. Kandungan tanin tumbuhan ini berpotensi menghambat absorpsi besi.",
    peringatan: 'Tidak Ada',
  ),
  Databases(
    image: 'assets/images/imghome/meniran.png',
    title: 'Meniran',
    desc:
        'Phyllanthus niruri L. sering disebut juga meniran, didukung anak, daun gendong anak, gosau ma dung-dung. Tumbuhan ini memiliki kandungan kimia tanin, damar, kalium, flavonoid (kuersetin, kuersitrin, isokuersitrin, astragalin, rutin; kaemferol-4-ramnopiranosid, eridiktol-7-ramnopiranosid), dan lignan.',
    khasiat:
        'Berdasarkan buku Cabe Puyang, daun, akar dan semua bagian tumbuhan ini dapat digunakan secara empiris untuk pengobatan ayan, malaria, sembelit, tekanan darah tinggi, tidak teratur datang haid, seriawan (daunnya), mulas, gigi nyeri (akarnya), kencing kurang lancar, kencing nanah, rajasinga, ginjal nyeri, menceret, demam, tetanus, darah kotor, kejang gagau, putih telur dalam kencing, kencing batu (semua bagiannya) dan lain-lain.',
    serve:
        'Sebagai dekokta: 15-30 g herba meniran dalam 250 mL air, diminum 2-3 kali per hari. Dekokta merupan sediaan cair yang dibuat dengan mengektraksi sediaan herbal dengan air pada suhu 90%C selama 30 menit',
    cate: 'Nabati',
    keamanan:
        "1. Efek tidak diinginkan: Hipoglikemi, hipotensi, ketidakseimbangan elektrolit dan mineral. \n\n2. Interaksi Obat: Dapat meningkatkan efek insulin dan obat-obat diabetes. Meniran mengandung geraniin yang dilaporkan mempunyai efek inotropik negatif, kronotropik negatif, hipotensi dan ACE inhibitor, oleh karena itu, kemungkinan dapat meningkatkan efek obat-obat antihipertensi, alfa blocker dan obat jantung. Ekstrak etanol herba meniran dapat menghambat enzim sitokrom P450 secara in vivo maupun in vitro. Meniran memiliki efek sinergis dengan obat antimikroba, antagonis dengan kortikosteroid. \n\n3. Kontraindikasi: tidak boleh digunakan pada wanita hamil, pasien dengan hipersensitivitas terhadap Phyllanthus niruri L., dan pasien penderita penyakit autoimun.",
    peringatan: 'Tidak Ada',
  ),
  Databases(
    image: 'assets/images/imghome/kayumanis.png',
    title: 'Kayu Manis',
    desc: 'Jahe Memiliki',
    khasiat:
        '1. Dapat menguatkan imunitas dalam tubuh \n2. Dapat mengobati penyakit peradangan. \n3. Mempunyai kandungan antibakteri. \n4. Dapat meredakan mual. \n5. Sebagai obat sakit kepala. \n6. Melegakan tenggorokan.',
    serve: 'Anda Bisa Mecampurkan',
    cate: 'Rempah',
    keamanan: "Test",
    peringatan: 'Test',
  ),
  Databases(
    image: 'assets/images/imghome/jambubiji.png',
    title: 'Jambu Biji',
    cate: 'Nabati',
    desc:
        'Jambu biji memiliki nama ilmiah Psidium guajava L. Sinonim: P. cujavillus Burm f., P. pomiferum L., P. pumilum Vahl, P. pyreferum. Kandungan kimia pada buah jambu biji adalah vitamin C, vitamin A, besi, fosfor, kalsium, flavonoid dan kelompok polifenol. Buah jambu biji memiliki kadar polifenol yang tinggi seperti senyawa mirisetin dan apigenin, asam elagat, dan antosianin. Selain itu mengandung terpenoid (triterpen dan karotenoid), flavonol, tanin dan derivat asam fenolat. Berdasarkan hasil analisis HPLC-MS, GC-MS dan NMR, ditemukan senyawa kimia asam kojat dan 5-hydroxymethylfurfural. Kandungan lainnya adalah saponin, asam oleonat, lyxopyranoside, arabopyranoside, guaijavarin, kuersetin, caryophyllene oxide dan p-seline.',
    khasiat:
        'Buah jambu biji dikenal sebagai buah tropis yang terkenal di Asia. Buah jambu biji memiliki sifat antioksidatif, antiinflamasi dan antidiabetes. Di Indonesia, buah jambu biji biasa digunakan untuk meningkatkan platelet pada demam berdarah dengue. Digunakan secara tradisional di China untuk diabetes.',
    serve:
        '1. 100 gram buah jambu biji (sekitar 1 buah besar) atau 55 gram buah jambu biji (sekitar 1 buah berukuran sedang). Kandungan vitamin C sebesar 228,3 mg dalam 100 gram buah. \n\n2. Dapat pula dikonsumsi dengan cara: satu buah jambu biji setengah masak, dibelah empat dan direbus dengan 1 L air sampai mendidih, kemudian disaring untuk diambil airnya. Diminum 2 kali sehari pagi dan sore.',
    keamanan:
        "1. Efek yang tidak diinginkan: dapat menyebabkan konstipasi. \n\n2. Interaksi Obat: secara teoretis dapat meningkatkan potensi obat-obatan kolesterol, depresi, diabetes, gangguan tidur dan diare.",
    peringatan: 'Tidak Ada',
  ),
  Databases(
    image: 'assets/images/imghome/jahee.png',
    title: 'Jahe',
    cate: 'Nabati',
    desc:
        'Jahe memiliki komponen zat aktif yang bisa membantu mengurangi gejala pilek, batuk, dan sakit tenggorokan. Jenis rempah ini dapat memeberikan rasa hangat sehingga membantu melegakan tenggorokan. Alhasil, batuk pun bisa mereda lebih cepat, yuk cari tahu apa saja khasiat jahe berikut ini.',
    khasiat:
        '1. Rimpang Jahe yang diparut digunakan sebagai obat oles untuk mengobati pembengkakan, rematik dan sakit kepala. Masyarakat Melayu memanfaatkan air perasan rimpang untuk obat kolik. Sedangkan masyarakat Jawa menggunakan rimpang jahe sunthi yang diperas untuk mengobati luka akibat tertusuk duri, kuku lecet, luka akibat digigit ular, gatal-gatal dan bengkak.\n\n2. Dalam literatur Cina kuno, jahe bermanfaat untuk mengobati radang ginjal, kram perut saat menstruasi dan memperlancar haid. Selan itu juga dimanfaatkan untuk mengobati mual-muntah, batuk, sakit gembur-gembur (pembengkakan yang disebabkan oleh kelebihan cairan dalam jaringan tubuh), diare serta sering digunakan untuk mengatasi perut kembung, sebagai stimulansia dan diuretik.',
    serve:
        '1. Serbuk sebanyak 2-4 g/hari. \n\n2. Untuk preparasi infus, campurkan air mendidih dengan 0,5 sampai 1 gram serbuk dan diamkan selama 5 menit.',
    keamanan:
        "1. Efek samping yang dilaporkan terutama adalah: \n\na. Keluhan gastrointestinal ringan-sedang, seperti rasa yang tidak enak pada mulut, diare, perut tidak nyaman, refluks dan nyeri ulu hati. \nb. Dilaporkan pemberian 6 g jahe kering atau lebih dapat meningkatkan pengelupasan sel-sel lambung, yang memicu timbulnya tukak lambung. Disarankan dosis pada pasien dengan perut kosong dibatasi maksimal 6 g. \nc. Uji klinik pemberian jahe pada anak-anak menunjukkan tidak ada efek samping yang dilaporkan. \n\n2. Penggunaan jahe dosis besar (12-14 g), tidak dianjurkan bersama dengan obat antikoagulan karena dapat meningkatkan efek hipotrombinemia (darah sukar membeku). \n\n3. Dosis besar dapat menyebabkan penekanan sistem saraf pusat dan aritmia. \n\n4. Kontraindikasi: Hati-hati penggunaan pada penderita yang hipersensitif terhadap jahe karena dapat menyebabkan dermatitis.",
    peringatan: 'Tidak ada',
  ),
  Databases(
    image: 'assets/images/herbal/alang-alang.png',
    title: 'Alang - Alang',
    cate: "Nabati",
    desc: 'Alang - Alang',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
  Databases(
    image: 'assets/images/herbal/mint.png',
    title: 'Daun Mint',
    cate: "Nabati",
    desc: 'Daun Mint',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
  Databases(
    image: 'assets/images/herbal/kumiskucing.png',
    title: 'Kumis Kucing',
    cate: "Nabati",
    desc: 'Kumis Kucing',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
  Databases(
    image: 'assets/images/herbal/Sirih.png',
    title: 'Sirih',
    cate: "Nabati",
    desc: 'Sirih',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
  Databases(
    image: 'assets/images/herbal/Teh.png',
    title: 'Teh',
    cate: "Nabati",
    desc: 'Teh',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
  Databases(
    image: 'assets/images/herbal/Bawangputih.png',
    title: 'Bawang Putih',
    cate: "Nabati",
    desc: 'Bawang Putih',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
  Databases(
    image: 'assets/images/herbal/jeruknipis.png',
    title: 'Jeruk Nipis',
    cate: "Nabati",
    desc: 'Jeruk Nipis',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
  Databases(
    image: 'assets/images/hewani/kerang.png',
    title: 'Kerang',
    cate: "Hewani",
    desc: 'Kerang',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
  Databases(
    image: 'assets/images/hewani/telor.png',
    title: 'Telur',
    cate: "Hewani",
    desc: 'Telur',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
  Databases(
    image: 'assets/images/hewani/minyakikan.png',
    title: 'Minyak Ikan',
    cate: "Hewani",
    desc: 'Minyak Ikan',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
  Databases(
    image: 'assets/images/hewani/susu.png',
    title: 'Susu',
    cate: "Hewani",
    desc: 'Susu',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
  Databases(
    image: 'assets/images/hewani/madu.png',
    title: 'Madu',
    cate: "Hewani",
    desc: 'Madu',
    khasiat: '-',
    serve: '-',
    keamanan: '-',
    peringatan: '-',
  ),
];
