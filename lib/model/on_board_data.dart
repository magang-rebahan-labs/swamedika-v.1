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
    image: 'assets/images/onboard1.png',
    desc: 'Selamat Datang \n Di Aplikasi Swamedikasi Thibbun Nabawi',
  ),
  OnBoarding(
    title: 'Swamedikasi \n Thibbun Nabawi',
    image: 'assets/images/onboard2.png',
    desc: 'Klik Mulai \n Untuk Menjelajah Lebih Dalam',
  ),
];
