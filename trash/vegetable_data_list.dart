class VegetableDataList {
  final String image;
  final String title;
  final String desc;
  final String serve;

  VegetableDataList({
    required this.image,
    required this.title,
    required this.desc,
    required this.serve,
  });
}

List<VegetableDataList> vegetabledataContents = [
  VegetableDataList(
    image: 'assets/images/sayur/bayam.png',
    title: 'Bayam',
    desc: 'Alang - Alang',
    serve: '-',
  ),
  VegetableDataList(
    image: 'assets/images/sayur/brokoli.png',
    title: 'Brokoli',
    desc: 'Daun Mint',
    serve: '-',
  ),
  VegetableDataList(
    image: 'assets/images/sayur/kentang.png',
    title: 'Kentang',
    desc: 'Kumis Kucing',
    serve: '-',
  ),
  VegetableDataList(
    image: 'assets/images/sayur/kubis.png',
    title: 'Kubis',
    desc: 'Sirih',
    serve: '-',
  ),
  VegetableDataList(
    image: 'assets/images/sayur/seledri.png',
    title: 'Seledri',
    desc: 'Teh',
    serve: '-',
  ),
  VegetableDataList(
    image: 'assets/images/sayur/terong.png',
    title: 'Lada',
    desc: 'Bawang Putih',
    serve: '-',
  ),
  VegetableDataList(
    image: 'assets/images/sayur/tomat.png',
    title: 'Teh',
    desc: 'Lidah Buaya',
    serve: '-',
  ),
  VegetableDataList(
    image: 'assets/images/sayur/wortel.png',
    title: 'Wortel',
    desc: 'Jeruk Nipis',
    serve: '-',
  ),
];
