part of 'dashboard.dart';

class HotCategoryPage extends StatelessWidget {
  const HotCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hot Categories',
          style: blackTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CategoryCard(
                imageUrl: 'assets/image_category1.png',
                name: 'Web Developer',
                onTap: () {
                  //
                },
              ),
              CategoryCard(
                imageUrl: 'assets/image_category2.png',
                name: 'Mobile Developer',
                onTap: () {
                  //
                },
              ),
              CategoryCard(
                imageUrl: 'assets/image_category3.png',
                name: 'App Designer',
                onTap: () {
                  //
                },
              ),
              CategoryCard(
                imageUrl: 'assets/image_category4.png',
                name: 'Content Writer',
                onTap: () {
                  //
                },
              ),
              CategoryCard(
                imageUrl: 'assets/image_category5.png',
                name: 'Video Grapher',
                onTap: () {
                  //
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
