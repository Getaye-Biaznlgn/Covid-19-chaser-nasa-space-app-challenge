class OnBoarding {
  final String title;
  final String image;

  OnBoarding({
   this.title,
   this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Let\'s Fight Covid 19 Together!',
    image: 'assets/images/onboarding_image_1.jpg',
  ),
  OnBoarding(
    title: 'Wear a Mask',
    image: 'assets/images/onboarding_image_2.jpg',
  ),
  OnBoarding(
    title: 'Maintain a safe distance from others (at least 1 metre)',
    image: 'assets/images/onboarding_image_3.jpg',
  ),
  OnBoarding(
    title: 'Clean your hands often',
    image: 'assets/images/onboarding_image_4.png',
  ),
];
