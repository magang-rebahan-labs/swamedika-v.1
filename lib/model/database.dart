class Databases {
  final String? image;
  final String title;
  final String desc;
  final String? hadist;
  final String? penggunaan;
  final String? cate;
  final String? khasiat;
  final String? keamanan;
  final String? peringatan;

  Databases({
    // required this.image,
    // required this.title,
    // required this.desc,
    // required this.penggunaan,
    // required this.cate,
    // required this.khasiat,
    // required this.keamanan,
    // required this.peringatan,
    this.image,
    required this.title,
    required this.desc,
    this.hadist,
    this.penggunaan,
    this.cate,
    this.khasiat,
    this.keamanan,
    this.peringatan,
  });
}

List<Databases> databaseContent = [
  // NABATI ==============================================================
  // Kunyit
  Databases(
    image: 'assets/images/nabati/kunyit.png',
    title: 'Kunyit',
    cate: "Nabati",
    desc:
        'Kunyit termasuk salah satu tanaman rempah-rempah dan obat asli dari wilayah Asia Tenggara. Tanaman ini kemudian mengalami penyebaran ke daerah Malaysia, Indonesia, Australia bahkan Afrika. Hampir setiap orang Indonesia dan India serta bangsa Asia umumnya pernah mengonsumsi tanaman rempah ini, baik sebagai pelengkap bumbu masakan, jamu atau obat untuk menjaga kesehatan dan kecantikan seperti pemakaian dalam perawatan kulit dan wajah.',
    khasiat:
        '1. Rimpang yang dicampur dengan susu hangat digunakan untuk menyembuhkan pilek, bronkitis dan asma. Sedangkan perasan rimpang segar dapat dioleskan pada infeksi kulit. \n\n2. Rimpang kunyit juga disebutkan memiliki khasiat meredakan berbagai radang, rematik, perut nyeri, penyakit hati, batu ginjal dan membersihkan haid.',
    penggunaan:
        '1. Sebanyak 25 g kunyit segar, dicuci bersih, diparut, diperas, disaring, ditambah 1 sendok makan madu kemudian diminum 2 kali sehari. \n\n2. Bahan kering: 3-9 gram per hari; Serbuk: 1,5- 3,0 g/hari; infus oral: 0,5 - 1 gram tiga kali sehari. \n\n3. Serbuk harus dikonsumsi 2 sampai 3 kali sehari setelah makan; teh (2 sampai 3 gelas) dikonsumsi diantara saat makan. \n\n4. Untuk membuat teh, panaskan 0,5 sampai 1 gram obat pada air mendidih, tutup, tunggu 5 menit.',
    keamanan:
        '1. Tidak ada efek samping mayor yang dilaporkan pada studi klinik penggunaan ekstrak kunyit dan demikian juga kurkumin hingga dosis 8 g /hari selama 3 bulan. Pada uji klinik lain efek samping ringan seperti mual, diare, sakit kepala, kelelahan dan mengantuk dilaporkan pada kelompok kunyit dengan dosis 2 g/hari (serbuk kering rimpang kunyit). \n\n2. Tidak boleh digunakan bersamaan dengan obat golongan Nonsteroidal Anto-inflammatory drugs (NSAID), antiplatelet, dan antihiperlipidemia. \n\n3. Pengunaan pada penderita penyumbatan saluran empedu, cholangitis, batu empedu atau penyakit empedu lainnya sebaiknya berkonsultasi dengan dokter. \n\n4. Penggunaannya tidak dianjurkan pada ibu hamil dan menyusui karena kurangnya data yang relevan tentang keamanan penggunaan selama kehamilan dan menyusui.',
  ),
  // Temulawak
  Databases(
    image: 'assets/images/nabati/temulawak.png',
    title: 'Temulawak',
    cate: "Nabati",
    desc:
        'Informasi Umum Temulawak adalah tumbuhan obat yang tergolong dalam suku temu-temuan (Zingiberaceae). Ia berasal dari Indonesia, khususnya Pulau Jawa, kemudian menyebar ke beberapa tempat di kawasan wilayah biogeografi Malesia. Tanaman ini dapat tumbuh dengan baik pada dataran rendah sampai ketinggian 1500 meter di atas permukaan laut dan berhabitat di hutan tropis. Rimpang temulawak dapat tumbuh dan berkembang dengan baik pada tanah yang gembur.',
    khasiat:
        'Temulawak telah digunakan secara turun temurun di Indonesia untuk mengobati berbagai keluhan perut dan gangguan hati, demam dan sembelit, galaktogogue, diare berdarah, disentri, radang rektum, wasir, gangguan lambung yang disebabkan oleh dingin, luka yang terinfeksi, erupsi kulit, akne vulgaris, eksim, cacar dan anoreksia serta untuk mengurangi peradangan rahim setelah melahirkan',
    penggunaan:
        'Untuk meredakan gangguan fungsi hati dapat dilakukan dengan merebus 25 g irisan temulawak segar dengan 500 mL air hingga tinggal 300 mL, diminum untuk sehari. Cara lain dapat dilakukan dengan mengambil 25 g rimpang segar, diparut, diperas, disaring dibagi tiga dan diminum untuk sehari',
    keamanan:
        '1. European Medicine Agency melaporkan tidak ada efek samping serius yang dilaporkan sampai sekarang. Lebih lanjut komposisi kimia dari temulawak tidak memberikan alasan untuk masalah keamanan. \n\n2. Penggunaan temulawak pada wanita hamil dan selama menyusui tidak dianjurkan \n\n3. Penggunaan pada penderita penyumbatan saluran empedu, cholangitis, batu empedu atau penyakit empedu lainnya sebaiknya berkonsultasi dengan dokter.',
  ),
  // Jahe
  Databases(
    image: 'assets/images/nabati/jahe.png',
    title: 'Jahe',
    cate: "Nabati",
    desc:
        'Jahe adalah tumbuhan yang rimpangnya sering digunakan sebagai rempah-rempah dan bahan baku pengobatan tradisional. Rimpangnya berbentuk jemari yang menggembung di ruas-ruas tengah. Rasa dominan pedas yang dirasakan dari jahe disebabkan oleh senyawa keton bernama zingeron.',
    khasiat:
        'Rimpang jahe yang diparut digunakan sebagai obat oles untuk mengobati pembengkakan, rematik dan sakit kepala. Masyarakat Melayu memanfaatkan air perasan rimpang untuk obat kolik. Sedangkan masyarakat Jawa menggunakan rimpang jahe sunthi yang diperas untuk mengobati luka akibat tertusuk duri, kuku lecet, luka akibat digigit ular, gatal-gatal dan bengkak. Dalam literatur Cina kuno, jahe bermanfaat untuk mengobati radang ginjal, kram perut saat menstruasi dan memperlancar haid. Selan itu juga dimanfaatkan untuk mengobati mual-muntah, batuk, sakit gembur-gembur (pembengkakan yang disebabkan oleh kelebihan cairan dalam jaringan tubuh), diare serta sering digunakan untuk mengatasi perut kembung, sebagai stimulansia dan diuretik',
    penggunaan:
        'Untuk preparasi infus, campurkan air mendidih dengan 0,5 sampai 1 gram serbuk dan diamkan selama 5 menit',
    keamanan:
        '1. Efek samping yang dilaporkan terutama adalah: \n\na. Keluhan gastrointestinal ringan-sedang, seperti rasa yang tidak enak pada mulut, diare, perut tidak nyaman, refluks dan nyeri ulu hati. \nb. Dilaporkan pemberian 6 g jahe kering atau lebih dapat meningkatkan pengelupasan sel-sel lambung, yang memicu timbulnya tukak lambung. Disarankan dosis pada pasien dengan perut kosong dibatasi maksimal 6 g. \nc. Uji klinik pemberian jahe pada anak-anak menunjukkan tidak ada efek samping yang dilaporkan. \n\n2. Penggunaan jahe dosis besar (12-14 g), tidak dianjurkan bersama dengan obat antikoagulan karena dapat meningkatkan efek hipotrombinemia (darah sukar membeku). \n\n3. Dosis besar dapat menyebabkan penekanan sistem saraf pusat dan aritmia. \n\n4. Kontraindikasi: Hati-hati penggunaan pada penderita yang hipersensitif terhadap jahe karena dapat menyebabkan dermatitis.',
  ),
  // Jambu Biji
  Databases(
    image: 'assets/images/nabati/jambubiji.png',
    title: 'Jambu Biji',
    cate: "Nabati",
    desc:
        'Jambu biji atau sering juga disebut jambu batu, jambu siki dan jambu klutuk adalah tanaman tropis yang berasal dari Brasil, disebarkan ke Indonesia melalui Thailand. Jambu batu memiliki buah yang berwarna hijau dengan daging buah berwarna putih atau merah dan berasa asam-manis. Buah jambu batu dikenal mengandung banyak vitamin C.',
    khasiat:
        'Buah jambu biji dikenal sebagai buah tropis yang terkenal di Asia. Buah jambu biji memiliki sifat antioksidatif, antiinflamasi dan antidiabetes.  Di Indonesia, buah jambu biji biasa digunakan untuk meningkatkan platelet pada demam berdarah dengue Selain itu digunakan secara tradisional di China untuk diabetes',
    penggunaan:
        'Satu buah jambu biji setengah masak, dibelah empat dan direbus dengan 1 L air sampai mendidih, kemudian disaring untuk diambil airnya. Diminum 2 kali sehari pagi dan sore',
    keamanan:
        '1. Efek yang tidak diinginkan: dapat menyebabkan konstipasi. \n\n2. Interaksi Obat: secara teoretis dapat meningkatkan potensi obat-obatan kolesterol, depresi, diabetes, gangguan tidur dan diare.',
  ),
  // Daun Jambu Biji
  Databases(
    image: 'assets/images/nabati/daunjambubiji.png',
    title: 'Daun Jambu Biji',
    cate: "Nabati",
    desc:
        'Daun jambu biji adalah salah satu bahan alami yang sering dijadikan berbagai jenis ramuan obat. Pasalnya, daun jambu biji menyimpan segudang khasiat baik untuk kesehatan tubuh.  Salah satu faktor yang membuat daun jambu biji sering dijadikan obat adalah banyaknya kandungan nutrisi dalam daun tersebut. Kandungan nutrisi yang terkandung dalam daun jambu biji tersebut seperti vitamin C, kalium, antioksidan, zat besi, likopen dan masih banyak lagi.',
    khasiat:
        'Di Indonesia secara tradisional digunakan untuk antidiare. Penelitian di Indonesia diprioritaskan sebagai antivirus, dengue. Jambu biji digunakan untuk disentri, lumpuh, mencret, radang lambung, sariawan, cucur darah tak henti-henti, keputihan (daun, kulit dan akarnya). Cara kerja: sebagai antibakteri, anti HIV, antioksidan, antiseptik. Indikasi: bakteria, candida, batuk, infeksi, inflamasi, malaria, parasit, salmonella, diare, shigella, radang tenggorokan',
    penggunaan:
        '15 gram daun segar atau daun kering direbus dengan 1 liter air selama 10 menit dan dihabiskan dalam 1 hari',
    keamanan:
        '1. Efek yang tidak diinginkan: dapat menyebabkan konstipasi. Dilaporkan adanya dermatitis alergi setelah penggunaan eksternal sediaan teh dari tumbuhan ini. \n\n2. Hanya untuk penderita kencing manis yang telah ditetapkan dokter. Jangan digunakan lebih dari 30 hari. Tidak direkomendasikan untuk penggunaan pada anak-anak, wanita hamil dan menyusui. Hipersensitif atau alergi terhadap tumbuhan ini. \n\n3. Interaksi Obat: Secara teoretis dapat meningkatkan potensi obat-obatan kolesterol, depresi, diabetes, gangguan tidur dan diare. Kandungan tanin tumbuhan ini berpotensi menghambat absorpsi besi.',
  ),
  // Meniran
  Databases(
    image: 'assets/images/nabati/adas.png',
    title: 'Meniran',
    cate: "Nabati",
    desc:
        'Meniran adalah salah satu jenis tanaman yang memiliki bentuk batang bulat tegak lurus, tinggi tanaman bisa mencapai satu meter lebih dalam kondisi tanah subur. Daun dari tanaman meniran bertulang menyirip genap, setiap satu tangkai memiliki daun majemuk dengan ukuran yang kecil dan berbentuk lonjong. Bunga tumbuhan ini terdapat pada setiap ketiak daun serta menghadap ke bagian bawah.',
    khasiat:
        'Daun, akar dan semua bagian tumbuhan ini dapat digunakan secara empiris untuk pengobatan ayan, malaria, sembelit, tekanan darah tinggi, tidak teratur datang haid, seriawan (daunnya), mulas, gigi nyeri (akarnya), kencing kurang lancar, kencing nanah, rajasinga, ginjal nyeri, menceret, demam, tetanus, darah kotor, kejang gagau, putih telur dalam kencing, kencing batu (semua bagiannya) dan lain-lain.',
    penggunaan:
        'Sebagai dekokta: 15-30 g herba meniran dalam 250 mL air, diminum 2-3 kali per hari. Dekokta merupan sediaan cair yang dibuat dengan mengektraksi sediaan nabati dengan air pada suhu 90 C selama 30 menit.',
    keamanan:
        '1. Efek tidak diinginkan: Hipoglikemi, hipotensi, ketidakseimbangan elektrolit dan mineral. \n\n2. Interaksi Obat: Dapat meningkatkan efek insulin dan obat-obat diabetes. Meniran mengandung geraniin yang dilaporkan mempunyai efek inotropik negatif, kronotropik negatif, hipotensi dan ACE inhibitor, oleh karena itu, kemungkinan dapat meningkatkan efek obat-obat antihipertensi, alfa blocker dan obat jantung. Ekstrak etanol herba meniran dapat menghambat enzim sitokrom P450 secara in vivo maupun in vitro. Meniran memiliki efek sinergis dengan obat antimikroba, antagonis dengan kortikosteroid (agen imunosupresan). \n\n3. Kontraindikasi: tidak boleh digunakan pada wanita hamil, pasien dengan hipersensitivitas terhadap Phyllanthus niruri L., dan pasien penderita penyakit autoimun.',
  ),
  // Sambiloto
  Databases(
    image: 'assets/images/nabati/adas.png',
    title: 'Sambiloto',
    cate: "Nabati",
    desc:
        'Sambiloto merupakan tumbuhan berkhasiat obat berupa terna tegak yang tingginya bisa mencapai 90 sentimeter. Asalnya diduga dari Asia tropika. Penyebarannya dari India meluas ke selatan sampai di Siam, ke timur sampai semenanjung Malaya, kemudian ditemukan Jawa. Tumbuh baik di dataran rendah sampai ketinggian 700 meter dari permukaan laut. Sambiloto dapat tumbuh baik pada curah hujan 2000-3000 mm/tahun dan suhu udara 25-32 derajat Celcius. Kelembapan yang dibutuhkan termasuk sedang, yaitu 70-90% dengan penyinaran agak lama.',
    khasiat:
        'Penggunaan herba yang dijelaskan dalam farmakope dan dokumen resmi tertentu yaitu: untuk disentri basiler, bronkitis, bisul, radang usus, batuk, dispepsia, demam, hepatitis, malaria, luka pada mulut, luka, tuberkulosis dan gigitan berbisa ular; dalam pengobatan tradisional digunakan untuk kolik, otitis media, vaginitis, penyakit radang panggul, cacar air, eksim dan luka bakar. Tumbuhan ini digunakan untuk radang tonsil, borok, tipus, demam, gatal-gatal, digigit serangga atau ular berbisa, kencing manis, disentri, radang telinga, radang usus buntu, masuk angin, darah kotor.',
    penggunaan:
        '3-9 g herba kering atau 25-75 g herba segar sebagai dosis tunggal sesuai kebutuhan. Sebanyak tiga gram bahan kering atau 25 gram bahan segar direbus dan diminum 2 kali sehari sebelum makan.',
    keamanan:
        '1. Efek tidak diinginkan: penggunaan dosis tinggi herba sambiloto dapat menyebabkan perut tidak enak, muntah-muntah, mual dan kehilangan selera makan, hal ini disebabkan karena rasa pahit dari andrografolida, sedangkan pada wanita dapat menyebabkan efek antifertilitas. Pernah dilaporkan (sangat jarang) timbulnya gatal-gatal (kaligata/urtikaria) dan bengkak pada mata setelah minum rebusan sambiloto. \n\n2. Disarankan untuk menghindari tanaman ini selama kehamilan karena efek pencegahan ovulasi. \n\n3. Individu yang alergi terhadap tanaman bahkan dapat menimbulkan reaksi anafilaksis. \n\n4. Hindari penggunaan jangka panjang bersamaan dengan obat imunosupresan. \n\n5. Interaksi Obat\n Ekstrak herba sambiloto kemungkinan memiliki efek sinergis dengan isoniazid. Sambiloto memiliki efek hipotensif dan antiplatelet sehingga dapat meningkatkan efek obat-obat antihipertensi dan antiplatelet.',
  ),
  // Kayu Putih
  Databases(
    image: 'assets/images/nabati/kayuputih.png',
    title: 'Kayu Putih',
    cate: "Nabati",
    desc:
        'Kayu putih merupakan pohon anggota suku jambu-jambuan (Myrtaceae) yang dimanfaatkan sebagai sumber minyak kayu putih (cajuput oil). Minyak diekstrak (biasanya disuling dengan uap) terutama dari daun dan rantingnya. Namanya diambil dari warna batangnya yang memang putih.',
    khasiat: 'Mengobati rematik',
    penggunaan:
        'Bahan direbus dengan 2 gelas air sampai menjadi separuhnya, dinginkan, saring dan diminum sekaligus.',
    keamanan:
        '1. Larangan: anak, gangguan pencernaan, gangguan kandung empedu, gangguan hati. pada kehamilan, menyusui harus dengan supervisi dokter. \n\n2. Efek samping: rasa terbakar di ulu hati, mual, muntah, pusing. \n\n3. Interaksi: dapat menurunkan efek obat yang diberikan bersamaan',
    peringatan: 'Jauhkan dari jangkauan anak - anak.',
  ),
  // Kayu Manis
  Databases(
    image: 'assets/images/nabati/kayumanis.png',
    title: 'Kayu Manis',
    cate: "Nabati",
    desc:
        'Kulit kayu manis adalah sejenis rempah-rempah yang diperoleh dari kulit bagian dalam beberapa spesies pohon genus Cinnamomum yang digunakan untuk masakan yang manis dan sedap. Meskipun kayu manis terkadang dianggap sebagai "kayu manis yang sesungguhnya", kebanyakan kulit kayu manis di perdagangan internasional dari spesies lain yang berdekatan, yang juga disebut "kasia" untuk membedakannya dari "kulit kayu manis yang sesungguhnya".',
    khasiat: 'Mengobati Kencing Manis',
    penggunaan:
        'Bahan dihaluskan menjadi serbuk, diseduh dengan 1 cangkir air mendidih, diamkan, saring, diminum selagi hangat.',
    keamanan:
        '1. Larangan: tukak lambung/usus 12 jari, demam yang tidak jelas penyebabnya, kehamilan, menyusui, alergi. \n\n2. Efek samping: alergi. \n\n3. Interaksi: menurunkan efek tetrasiklin',
    peringatan:
        'Hati-hati pada penyakit kencing manis, harus konsultasi dokter terlebih dahulu.',
  ),
  // Adas
  Databases(
    image: 'assets/images/nabati/adas.png',
    title: 'Adas',
    cate: "Nabati",
    desc:
        'Adas atau adas pedas (Foeniculum vulgare Miller, suku adas-adasan atau Apiaceae) telah lama dikenal sebagai tanaman bumbu atau tanaman obat. Minyak adas yang dikandung biji tanaman ini merupakan salah satu komponen minyak telon.',
    khasiat: 'Membantu mengatasi mulas dan perut kembung',
    penggunaan:
        '1. Bahan direbus dengan 1 gelas air, sampai menjadi separuhnya, saring dan diminum selagi hangat. \n\n2. Bahan dihaluskan, diseduh dengan air mendidih, diamkan, saring dan diminum selagi hangat. \nDosis 2 x 3 g (1 sdt/hari)',
    keamanan:
        '1. Efek samping: mual, kadang terjadi alergi pada saluran nafas yang dapat menimbulkan asma. \n\n2. Interaksi: siprofloksasin (menurunkan efek siprofloksasin).',
    peringatan:
        'Dosis besar dapat menyebabkan penurunan hormone laki-laki karena tanaman ini mengandung bahan yang mirip hormone perempuan (kandungan zat aktif mempunyai aktivitas estrogenik).',
  ),

  // HEWANI ==============================================================
  // Madu
  Databases(
      image: 'assets/images/hewani/madu.png',
      title: 'Madu',
      cate: "Hewani",
      desc:
          'Madu dalam kamus besar bahasa Indonesia diartikan cairan yang banyak mengandung zat gula pada sarang lebah atau bunga (rasanya manis). Madu merupakan salah satu bahan pemanis dari lebah yang dapat disimpan tanpa melalui proses apapun terlebih dahulu. Madu merupakan bahan dengan viskositas tinggi yang dihasilkan oleh lebah dari nektar bunga. Madu sudah sangat sering digunakan oleh manusia untuk bahan makanan maupun pengobatan.',
      khasiat:
          'Sebagai sumber energi madu memiliki kandungan nutrisi yang baik dan dapat menjadi sumber energi karena kandungan karbohidratnya, Madu mengandung potent antioksidant material yang dapat menghentikan reaksi berantai akibat radikal bebas, Anti bakteri dari madu berasal dari sifat asam dari madu, tekanan osmosis tinggi dan kandungan air rendah, serta hidrogen peroksida, Madu memiliki efek anti inflamasi pada proses penyembuhan luka. Madu dapat dioleskan pada luka tekanan osmosis pada madu akan menyerap kandungan air di luka sehingga luka akan lebih cepat kering.',
      hadist:
          'Madu dalam al-quran disebutkan sebanyak satu kali sebagaimana yang terdapat dalam QS. Muhammad/47: 15. \n\n“(apakah) perumpamaan (penghuni) jannah yang dijanjikan kepada orang-orang yang bertakwa yang di dalamnya ada sungai-sungai dari air yang tiada berubah rasa dan baunya, sungai-sungai dari air susu yang tidak beubah rasanya, sungai-sungai dari khamar yang lezat rasanya bagi peminumnya dan sungai-sungai dari madu yang disaring; dan mereka memperoleh di dalamnya segala macam buah-buahan dan ampunan dari Rabb mereka, sama dengan orang yang kekal dalam Jahannam dan diberi minuman dengan air yang mendidih sehingga memotong ususnya”?. \n\nAyat di atas menerangkan minuman yang ada di surga dan neraka, salah satuminuman yang ada di dalam surga adalah madu, betapa istimewanya madu, sehingga madu tidak hanya merupakan minuman di dunia melainkan madu juga termasuk minuman yang ada di surga yang diperuntukkan bagi penghuninya. \n\nSurah An Nahl ayat 68 yang berbunyi : Dan Tuhanmu mewahyukan kepada lebah: “Buatlah sarang-sarang di bukit-bukit, di pohon-pohon kayu, dan di tempat-tempat yang dibikin manusia” \n\nDan pada surah An-Nahl ayat 69 yang berbunyi: \n\n “Dari perut lebah itu ke luar minuman (madu) yang bermacam-macam warnanya, di dalamnya terdapat obat yang menyembuhkan bagi manusia”.'),
  // Susu Hewan Ternak
  Databases(
      image: 'assets/images/hewani/susu.png',
      title: "Susu Hewan Ternak",
      desc:
          "Air susu merupakan bahan makanan yang istimewa bagi manusia karena kelezatan dan komposisinya yang ideal selain air susu mengandung semua zat yang dibutuhkan oleh tubuh, semua zat makanan yang terkandung didalam air susu dapat diserap oleh darah dan dimanfaatkan oleh tubuh.",
      cate: "Hewani",
      khasiat:
          "- Laktose sebagai sumber energi.\n- Protein sebagi bahan penunjang kehidupan untuk hidup pokok, pertumbuhan dan pergantian sel, dan diambil sebagai bentuk bahan keju, albumin dan globulin. \n- Lemak sebagai sumber energi terbaik dibanding lemak produksi hewan lain. \n- Mineral dan vitamin yang diperlukan dalam pencernaan dan metabolisme sebagai katalisator untuk katabiose dan anabiose dan keperluan resistensi tubuh.",
      hadist:
          'QS. An-Nahl (16): 66\n“Dan Sesungguhnya pada binatang ternak itu benar-benar terdapat pelajaran bagi kamu. Kami memberimu minum dari pada apa yang berada dalam perutnya (berupa) susu yang bersih antara tahi dan darah, yang mudah ditelan bagi orang-orang yang meminumnya”.\n\nKandungan susu yang sudah tidak diragukan lagi, juga diperjelas dengan firman Allah yang berbunyi:\n“Susu yang bersih antara tahi dan darah, yang mudah ditelan bagi orang-orang yang meminumnya” (QS. An-Nahl {16}: 66).'),
  // Ikan Tuna
  Databases(
      image: 'assets/images/hewani/ikantuna.png',
      title: "Ikan Tuna",
      desc:
          "Jenis ikan yang di Indonesia Timur sering disebut tuna mata besar ini hidup di perairan lepas pantai mulai dari permukaan sampai kedalaman 250 m. Panjangnya bisa mencapai 236 cm, umumnya 60 – 180 cm. Ikan berbadan memanjang dan langsing ini tergolong buas, karnivor, dan predator. Ikan Tuna atau ikan Sisiak (sebutan nelayan di Padang) juga kaya berbagai mineral penting yang esensial bagi tubuh. ",
      cate: "Hewani",
      khasiat:
          "- Kandungan iodium pada ikan tuna mencapai 28 kali iodium pada ikan tawar. Iodium berperan penting untuk meningkatkan kecerdasan anak.\n- Ikan tuna juga kaya akan selenium. Selenium ini memiliki peranan penting didalam tubuh yaitu mengaktifkan enzim antioksidan glutathione peraxidase.\n- Tuna juga mengandung kalium dan natrium.\n- Ikan tuna juga mengandung vitamin yang sangat baik untuk pemeliharaan sel epitel, peningkatan imunitas tubuh, pertumbuhan, penglihatan.",
      hadist:
          'Ikan dan hewan yang hidup di air halal dimakan, yakni dengan alasan ikan termasuk bangkai yang halal. Hal ini memang sesuai dengan prinsip bangkai yang dihalalkan. Meskipun secara umum, bangkai itu haram dimakan, namun di dalam Islam ada bangkai yang dikecualikan boleh dimakan, yakni bangkai ikan, dan bangkai belalang. Sabda Rasulullah SAW tentang halalnya dua bangkai, sesuai hadits berikut: \n\n“ Telah dihalalkan bagi kami dua bangkai dan dua darah. Dua bangkai itu adalah ikan dan belalang. Dua darah itu adalah hati dan limpa ” (HR. Ahmad dan Al Baihaqi). \n\nMakanan yang ditetapkan kehalalannya oleh syariat adalah hewan laut dan semua jenis makanan yang dikeluarkan oleh laut. Hewan laut tidak perlu disembelih sebagaimana firman Allah SWT: \n\n“ Dihalalkan bagimu binatang buruan laut dan makanan (yang berasal) dari laut sebagai makanan yang lezat bagimu, dan bagi orang-orang yang dalam perjalanan ” (Al Maidah : 96). \n\nTermasuk pula dihalalkan dalam hal ini adalah ikan yang diawetkan baik dalam kemasan sarden, ikan asin maupun ikan salai agar dapat bertahan lama dan tidak lekas rusak. Semua olahan ikan yang diawetkan tersebut halal dimakan selama tidak mengandung bahaya. Namun, apabila mengandung bahaya, maka ikan yang diawetkan tersebut menjadi terlarang karena masuk dalam kriteria makanan madharat (yang membahayakan).'),
  // Udang
  Databases(
      image: 'assets/images/hewani/udang.png',
      title: "Udang",
      desc:
          "Organisme laut dikenal memiliki kandungan nutrisi yang baik untuk kesehatan manusia. Udang misalnya salah satu organisme dari kelompok crustacea yang kaya senyawa aktif, penting bagi kesehatan manusia. Senyawa aktif ini mempunyai kemampuan mencegah penyakit pada tubuh serta dapat memenuhi kebutuhan nutrisi tubuh.",
      cate: "Hewani",
      khasiat:
          "Udang mengandung senyawa aktif seperti omega-3, mineral, lemak, sitin, karotenoid (astaksantin) serta vitamin. Senyawa aktif memiliki peran penting untuk kesehatan, pertumbuhan dan perkembangan tubuh manusia. Senyawa aktif seperti asam lemak (omega-3 dan omega-6) pada udang dan ikan bermanfaat untuk perkembangan otak anak, untuk bayi, untuk ibu hamil.",
      hadist:
          'Semua binatang yang hidupnya di dalam air, baik berupa ikan maupun lainnya, menurut syariat Islam, hukumnya halal dimakan. Hal ini berdasarkan firman Allah SWT dalam Al-Qur’an Surah Al- Maidah/5:96 sebagai berikut: \n\n“Dihalalkan bagimu binatang buruan laut dan makanan (yang berasal) dari laut sebagai makanan yang lezat bagimu, dan bagi orang-orang yang dalam perjalanan, dan diharamkan atasmu (menangkap) binatang buruan darat, selama kamu dalam ihram. Dan bertakwalah kepada Allah Yang kepada-Nya-lah kamu akan dikumpulkan”.'),
  // Burung Merpati
  Databases(
      image: 'assets/images/hewani/burungmerpati.png',
      title: "Burung Merpati",
      desc:
          "Merpati merupakan komoditi ternak yang memang belum banyak peminatnya, namun apabila bisnis ini digeluti dengan tekun maka akan diperoleh keuntungan yang cukup besar karena selain harganya yang cukup tinggi.",
      cate: "Hewani",
      khasiat:
          "Untuk memenuhi kebutuhan nutrisi terutama panganan yang berasal dari hewan, seperti daging.",
      hadist:
          'Ternak yang termasuk dalam golongan ternak unggas antara lain ayam kampung, ayam pedaging, puyuh itik/bebek, angsa, merpati, dan berbagai macam jenis burung. Ternak unggas mempunyai sayap dan berkaki dua. \nAllah SWT berfirman : \n\n“Dan Dia telah menciptakan binatang ternak untuk kamu, padanya ada (bulu) yang menghangatkan dan berbagai-bagai manfaat, dan sebahagiannya kamu makan“ (An Nahl : 5). \n\nAllah SWT juga berfirman dalam ayat lainnya yakni surat Al Maidah ayat1 : \n“Hai orang-orang yang beriman, penuhilah aqad-aqad itu. Dihalalkan bagimu binatang ternak, kecuali yang akan disebutkan kepadamu” QS. Surat Al Maidah ayat1) .'),
  // Belalang
  Databases(
    image: 'assets/images/hewani/belalang.png',
    title: "Belalang",
    desc:
        "Belalang sawah (Oxya chinensis) termasuk ke dalam Ordo Orthoptera, Subordo Caelifera, Famili Acrididae, Subfamili Oxynae, Genus Oxya, spesies Oxya chinensis. Belalang tidak mempunyai telinga, akan tetapi dapat mendengar. Alat pendengar pada belalang disebut dengan tympanum dan terletak pada abdomen dekat sayap. Tympanum berbentuk menyerupai disk bulat besar yang terdiri dari beberapa prosesor dan saraf yang digunakan untuk memantau getaran di udara, secara fungsional mirip dengan gendang telinga manusia.",
    cate: "Hewani",
    khasiat:
        "Belalang sawah termasuk serangga yang dapat dimanfaatkan sebagai bahan makanan. belalang sawah (Oxya chinensis) dapat diklasifikasikan sebagai salah satu sumber protein alergen. Metode pengolahan makanan dapat meningkatkan, mengurangi atau menghilangkan potensi alergi makanan.",
    hadist:
        'Belalang termasuk bangkai yang halal. Hal ini memang sesuai dengan prinsip bangkai yang dihalalkan. Meskipun secara umum, bangkai itu haram dimakan, namun di dalam Islam ada bangkai yang dikecualikan boleh dimakan, yakni bangkai ikan, dan bangkai belalang. Sabda Rasulullah SAW tentang halalnya dua bangkai, sesuai hadits berikut: \n\n“ Telah dihalalkan bagi kami dua bangkai dan dua darah. Dua bangkai itu adalah ikan dan belalang. Dua darah itu adalah hati dan limpa ” (HR. Ahmad dan Al Baihaqi). \n\nBelalang merupakan binatang yang halal dimakan karena secara khusus dinyatakan dalam Hadits Rasulullah berikut ini: \n\n“Kami berperang bersama Rasulullah SAW tujuh kali perang, kami memakan belalang bersamanya” (HR. Bukhari).',
  ),
  // Ikan Salmon
  Databases(
      image: 'assets/images/hewani/ikansalmon.png',
      title: "Ikan Salmon",
      desc:
          "Ikan yang satu ini sudah sering disebut sebagai salah satu makanan yang kaya akan asam lemak omega-3. Makan salmon setidaknya dua sampai tiga kali seminggu. Ikan salmon mengandung nutrisi-nutrisi penting untuk para ibu hamil.",
      cate: "Hewani",
      khasiat:
          "- Ikan salmon adalah sumber protein Protein ini dapat membantu anda mempertahankan daya tubuh anda agar anda tidak gampang sakit,\n- Selain protein, ikan Salmon mengandung omega 3 yang tinggi. Omega 3 sangat dibutuhkan untuk perkembangan janin khususnya perkembangan otak,\n- Vitamin mengonsumsi ikan salmon akan membuat perlindungan tubuh anda dari dampak jelek polutan serta sumber radikal bebas, dan mineral yang baik. ",
      hadist:
          'Makanan yang ditetapkan kehalalannya oleh syariat adalah hewan laut dan semua jenis makanan yang dikeluarkan oleh laut. Hewan laut tidak perlu disembelih sebagaimana firman Allah SWT: \n\n“ Dihalalkan bagimu binatang buruan laut dan makanan (yang berasal) dari laut sebagai makanan yang lezat bagimu, dan bagi orang-orang yang dalam perjalanan ” (Al Maidah : 96).'),
  // Ayam Boiler
  Databases(
      image: 'assets/images/hewani/ayambroiler.png',
      title: "Ayam Boiler",
      desc:
          "Daging unggas merupakan sumber protein hewani yang baik, karena mengandung asam amino esensial yang lengkap dan dalam jumlah perbandingan yang seimbang. Salah satunya adalah ayam boiler. Konsumsi masyarakat terhadap daging ayam khususnya ayam broiler terus meningkat dari waktu ke waktu.",
      cate: "Hewani",
      khasiat:
          "Ayam adalah bahan pangan yang mudah dikonsumsi dan dicerna, dapat meningkatkan kualitas terutama dari segi keamanan pangan dan kesehatan.",
      hadist:
          'Di dalam aas sunnah terdapat pembolehan memakan ayam, kuda, keledai liar dan kelinci. Allah SWT berfirman : \n\n“Dan Dia telah menciptakan binatang ternak untuk kamu, padanya ada (bulu) yang menghangatkan dan berbagai-bagai manfaat, dan sebahagiannya kamu makan“ (An Nahl : 5). \n\nAllah SWT juga berfirman dalam ayat lainnya yakni surat Al Maidah ayat1 :\n\n“Hai orang-orang yang beriman, penuhilah aqad-aqad itu. Dihalalkan bagimu binatang ternak, kecuali yang akan disebutkan kepadamu” QS. Surat Al Maidah ayat1). \n\nHadits yang yang menunjukkan halalnya daging ayam: \n\nDari Abi Musa al-Asyy’ari berkata: “saya melihat Nabi SAW memakan ayam” (Riwayat Bukhori). \n\nDari bunyi hadits tersebut jelaslah bahwa ayam termasuk makananyang baik dan boleh dimakan, Rasulullah Saw sendiri memakan daging ayam.'),
  // Daging Sapi
  Databases(
      image: 'assets/images/hewani/dagingsapi.png',
      title: "Daging Sapi",
      desc:
          "Daging sapi merupakan bahan pangan yang penting dalam memenuhi kebutuhan gizi. Kandungan gizi daging sapi yang lebih tinggi adalah protein, hal ini disebabkan karena daging mengandung beberapa asam amino esensial yang lengkap dan seimbang. ",
      cate: "Hewani",
      khasiat:
          "Daging sapi memiliki berbagai macam kandungan gizi yang dibutuhkan oleh tubuh seperti protein, lemak, karbohidrat, vitamin dan mineral.",
      hadist:
          'Sebagaimana firman Allah SWT dalam QS. Surat Al Maidah Ayat 1 yang berbunyi: \n\n“Hai orang-orang yang beriman, penuhilah aqad-aqad itu. Dihalalkan bagimu binatang ternak, kecuali yang akan dibacakan kepadamu. (Yang demikian itu) dengan tidak menghalalkan berburu ketika kamu sedang mengerjakan haji. Sesungguhnya Allah menetapkan hukum-hukum menurut yang dikehendaki-Nya.'),
  // Daging Kuda
  Databases(
      image: 'assets/images/hewani/dagingkuda.png',
      title: "Daging Kuda",
      desc:
          "Daging adalah salah satu hasil ternak yang hampir tidak dapat dipisahkan dari kehidupan manusia. Selain penganekaragaman sumber pangan, daging dapat menimbulkan kepuasan atau kenikmatan bagi yang memakannya. Daging kuda sendiri digunakan sebagai bahan makanan manusia semenjak hewan tersebut diperlakukan sebagai hewan buruan. Daging kuda rasanya agak manis, empuk, rendah lemak, dan berprotein tinggi yang bermanfaat sebagai sumber protein hewani. Protein hewani merupakan zat yang penting bagi tubuh manusia karena mengandung asam amino esensial yang berguna untuk membentuk antibodi sertapembentukan sel dan jaringan.",
      cate: "Hewani",
      khasiat:
          "Daging kuda memiliki banyak khasiat, salah satunya adalah untuk menambah stamina dan gairah. Di luar itu, bisa juga untuk membantu mengatasi risiko asam urat, rematik, kencing manis, asma sampai gatal eksim. ",
      hadist:
          'Hadits yang menunjukkan tentang boleh memakan daging kuda adalah: \n\n“Hadits riwayat Jabir bin Abdullah ra. : Bahwa pada pertempuran Khaibar, Rasulullah saw. melarang makan daging keledai dan mengizinkan makan daging kuda” (Shahih Bukhori).'),

  // JAMU ==============================================================
  // Beras Kencur
  Databases(
    image: 'assets/images/jamu/beraskencur.png',
    title: 'Beras Kencur',
    cate: "Jamu",
    desc:
        'Beras Kencur terbuat dari beras, kencur, gula aren, gula pasir, garam, air.',
    khasiat:
        'Sebagai peningkat daya tahan tubuh, Untuk mengobati infeksi dan diare dan bersifat antikangker, menghilangkan rasa lelah, menghilangkan darah kotor, menghangatkan badan serta mempercepat penyembuhan luka pasca kelahiran dan mehilangkan bau amis untuk menyegarkan tubuh, mencegah batuk, meningkatkan nafsu makan, serta meningkatkan kenyaringan suara.',
  ),
  // Wedang Jahe
  Databases(
    image: 'assets/images/jamu/wedangjahe.png',
    title: 'Wedang Jahe',
    cate: "Jamu",
    desc:
        'Wedang Jahe terbuat dari jahe, kayu secang, serai,air, kapulaga, kayu manis.',
    khasiat:
        'Jahe berpotensi sebagai antioksidan sehingga bermanfaat dalam peningkatan daya tahan tubuh, kandungan utama jahe adalah gingerol yang digunakan sebagai agen imunomodulator dengan meregulasi badai sitokin dan sebagai antioksidan sehingga dapat menangkal radikal bebas yang menyebabkan rusaknya sel tubuh.',
  ),
  // Wedang Uwuh
  Databases(
    image: 'assets/images/jamu/wedanguwuh.png',
    title: 'Wedang Uwuh',
    cate: "Jamu",
    desc:
        'Wedang Uwuh terbuat dari Serutan kayu secang kering, gula batu atau gula pasir, jahe, daun kayu manis kering, daun cengkeh kering, daun pala kering, cengkeh kering, air.',
    khasiat:
        'Berfungsi sebagai obat batuk, laksatif (pencahar) untuk mengatasi sembelit, dan antioksidan sehingga dapat menangkal radikal bebas yang menyebabkan rusaknya sel tubuh.',
  ),
  // Wedang Secang
  Databases(
    image: 'assets/images/jamu/wedangsecang.png',
    title: 'Wedang Secang',
    cate: "Jamu",
    desc:
        'Wedang Secang terbuat dari Daun stevia, kayu secang, jahe segar, cengkeh, sereh segar, kayu manis, kapulaga, pala, mesoyi, kedawung, klabet, lada, aquadest, standar vitamin C, ethanol, air.',
    khasiat:
        'Wedang secang dapat berkhasiat untuk mencegah dan meminimalkan terjadinya penyakit degeneratif melalui aktivitasnya sebagai antioksidan dan menurunkan gula darah bagi penderita diabetes. ',
  ),
  // Jamu Kunyit Asam
  Databases(
    image: 'assets/images/jamu/kunyitasam.png',
    title: 'Jamu Kunyit Asam',
    cate: "Jamu",
    desc:
        'Jamu Kunyit Asam terbuat dari Kunyit, gula aren, gula putih, asam jawa, garam, air.',
    khasiat:
        'Jamu ini bermanfaat sebagai antibiotik dan obat pencegah sariawan, sebagai peningkat daya tahan tubuh, melancarkan haid, memperlancar percernaan, mengurangi asam lambung, dan menghilangkan jerawat.',
  ),
  // Wedang Bandrek
  Databases(
    image: 'assets/images/jamu/bandrek.png',
    title: 'Wedang Bandrek',
    cate: "Jamu",
    desc:
        'Wedang Bandrek terbuat dari Jahe merah, cengkeh, bunga lawang, pala, lada hitam, kayu manis, jinten kasar, kapulaga, serai, daun pandan, gula aren, air.',
    khasiat:
        'Melawan penyakit kanker, obat sakit gigi, menurunkan tekanan darah, mencegah radang (Inflamasi), mengatasi masuk angin, mencegah perut kembung, mematikan patogen asing.',
  ),
  // Wedang Sarabba
  Databases(
    image: 'assets/images/jamu/sarabba.png',
    title: 'Wedang Sarabba',
    cate: "Jamu",
    desc:
        'Wedang Sarabba terbuat dari Campuran jahe, kuning telur, gula aren, air, santan dan merica bubuk.',
    khasiat:
        'Sarabba cocok untuk mengusir flu, menghangatkan badan, mengeluarkan angin dari tubuh saat masuk angin, mengandung gingerol yang digunakan sebagai agen imunomodulator dengan meregulasi badai sitokin dan sebagai antioksidan sehingga dapat menangkal radikal bebas yang menyebabkan rusaknya sel tubuh.',
  ),
];
