class RecomendationData {
  final String image;
  final String title;
  final String desc;
  final String serve;

  RecomendationData({
    required this.image,
    required this.title,
    required this.desc,
    required this.serve,
  });
}

List<RecomendationData> recomendationdataContents = [
  RecomendationData(
    image: 'assets/images/batuk.jpg',
    title: 'Batuk',
    desc: 'Jahe memiliki',
    serve: 'Anda bisa mencampurkan',
  ),
  RecomendationData(
    image: 'assets/images/alergi.jpg',
    title: 'Pilek',
    desc: 'Jahe memiliki',
    serve: 'Anda bisa mencampurkan',
  ),
  RecomendationData(
      image: 'assets/images/sick.jpg',
      title: 'Sakit Tenggorokan',
      desc: 'Jahe Memiliki',
      serve: 'Anda Bisa Mencampurkan'),
  RecomendationData(
    image: 'assets/images/pusing.png',
    title: 'Demam',
    desc: 'Jahe Memiliki',
    serve: 'Anda Bisa Mecampurkan',
  ),
];
