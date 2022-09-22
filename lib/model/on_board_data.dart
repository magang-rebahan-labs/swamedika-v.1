class OnBoarding {
  final String title;
  final String image;
  final String desc;

  OnBoarding({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Swamedikasi \n Thibbun Nabawi',
    image: 'assets/images/onboard/welcome1.png',
    desc: 'Metode Pengobatan Ala\n Rasulullah SAW',
  ),
  OnBoarding(
    title: 'Swamedikasi \n Thibbun Nabawi',
    image: 'assets/images/onboard/welcome2.png',
    desc: 'Klik Mulai \n Untuk Menjelajah Lebih Dalam',
  ),
];
