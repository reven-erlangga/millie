import 'package:flutter/material.dart';
import 'package:millie/pages/dashboard/detail_job_page.dart';
import 'package:millie/themes/themes.dart';
import 'package:millie/widgets/widgets.dart';

part 'hot_category_page.dart';
part 'new_job_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.all(edge),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jason Powel",
                          style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 24.0),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text("Programmer", style: regularTextStyle),
                      ],
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: purpleColor,
                        ),
                      ),
                      child: Image.asset(
                        'assets/image_profile.png',
                      ),
                    ),
                  ],
                ),
              )),
          preferredSize: const Size.fromHeight(120)),
      body: SingleChildScrollView(
        primary: true,
        padding: const EdgeInsets.symmetric(horizontal: edge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HotCategoryPage(),
            SizedBox(
              height: 25,
            ),
            NewJobPage()
          ],
        ),
      ),
    );
  }
}
