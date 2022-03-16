part of 'dashboard.dart';

class NewJobPage extends StatefulWidget {
  const NewJobPage({Key? key}) : super(key: key);

  @override
  State<NewJobPage> createState() => _NewJobPageState();
}

class _NewJobPageState extends State<NewJobPage> {
  final List<String> companyLogo = [
    'assets/icon_google.png',
    'assets/icon_instagram.png',
    'assets/icon_facebook.png'
  ];
  final List<String> companyName = ['Google', 'Instagram', 'Facebook'];
  final List<String> name = [
    'Front-End Developer',
    'UI Designer',
    'Data Scientist'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'New Jobs',
          style: blackTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListView.separated(
          itemCount: companyLogo.length,
          primary: false,
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(height: 3, color: Colors.white),
          itemBuilder: (_, index) {
            return JobCard(
                name: name[index],
                companyName: companyName[index],
                companyLogo: companyLogo[index],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailJobPage(),
                    ),
                  );
                });
          },
        ),
      ],
    );
  }
}
