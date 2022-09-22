class RempahDataList {
  final String image;
  final String title;
  final String desc;
  final String serve;

  RempahDataList({
    required this.image,
    required this.title,
    required this.desc,
    required this.serve,
  });
}

List<RempahDataList> rempahdataContents = [
  RempahDataList(
    image: 'assets/images/rempah/kayumanis.png',
    title: 'Kayu Manis',
    desc: 'Alang - Alang',
    serve: '-',
  ),
  RempahDataList(
    image: 'assets/images/rempah/jahe.png',
    title: 'Jahe',
    desc: 'Daun Mint',
    serve: '-',
  ),
  RempahDataList(
    image: 'assets/images/rempah/lengkuas.png',
    title: 'Lengkuas',
    desc: 'Kumis Kucing',
    serve: '-',
  ),
  RempahDataList(
    image: 'assets/images/rempah/asamjawa.png',
    title: 'Asam Jawa',
    desc: 'Sirih',
    serve: '-',
  ),
  RempahDataList(
    image: 'assets/images/rempah/kemiri.png',
    title: 'Kemiri',
    desc: 'Teh',
    serve: '-',
  ),
  RempahDataList(
    image: 'assets/images/rempah/lada.png',
    title: 'Lada',
    desc: 'Bawang Putih',
    serve: '-',
  ),
  // RempahDataList(
  //   image: 'assets/images/rempah/Teh.png',
  //   title: 'Teh',
  //   desc: 'Lidah Buaya',
  //   serve: '-',
  // ),
  // RempahDataList(
  //   image: 'assets/images/rempah/jeruknipis.png',
  //   title: 'Jeruk Nipis',
  //   desc: 'Jeruk Nipis',
  //   serve: '-',
  // ),
];
