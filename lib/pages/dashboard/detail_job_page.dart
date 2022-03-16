import 'package:flutter/material.dart';
import 'package:millie/themes/themes.dart';

class DetailJobPage extends StatelessWidget {
  const DetailJobPage({Key? key}) : super(key: key);

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
                    Text("1"),
                  ],
                ),
              )),
          preferredSize: const Size.fromHeight(120)),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: edge,
          ),
          children: [
            //
          ],
        ),
      ),
    );
  }
}
