class RecomendationData {
  final String image;
  final String title;
  final String desc;
  final String serve;
  final String cate;
  final String subtitle;

  RecomendationData({
    required this.image,
    required this.title,
    required this.desc,
    required this.serve,
    required this.cate,
    required this.subtitle,
  });
}

List<RecomendationData> recomendationdataContents = [
  RecomendationData(
    subtitle: '1',
    image: 'assets/images/batuk.jpg',
    title: 'Batuk',
    desc: 'Jahe memiliki',
    serve: 'Anda bisa mencampurkan',
    cate: 'Rempah',
  ),
  RecomendationData(
    subtitle: '3',
    image: 'assets/images/alergi.jpg',
    title: 'Pilek',
    desc: 'Jahe memiliki',
    serve: 'Anda bisa mencampurkan',
    cate: 'Rempah',
  ),
  RecomendationData(
    subtitle: '4',
    image: 'assets/images/sick.jpg',
    title: 'Sakit Tenggorokan',
    desc: 'Jahe Memiliki',
    serve: 'Anda Bisa Mencampurkan',
    cate: 'Rempah',
  ),
  RecomendationData(
    subtitle: '5',
    image: 'assets/images/pusing.png',
    title: 'Demam',
    desc: 'Jahe Memiliki',
    serve: 'Anda Bisa Mecampurkan',
    cate: 'Rempah',
  ),
];
