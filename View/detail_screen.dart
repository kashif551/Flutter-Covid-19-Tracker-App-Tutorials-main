import 'package:covid_tracker/View/world_states.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
  String name;
  String image;
  final int? totalCases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;

  DetailScreen({
    Key? key,
    required this.name,
    required this.image,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecovered,
    required this.active,
    required this.critical,
    required this.todayRecovered,
    required this.test,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .06,
                      ),
                      ReuseableRpw(
                          title: 'cases', value: widget.totalCases.toString()),
                      ReuseableRpw(
                          title: 'cases', value: widget.totalCases.toString()),
                      ReuseableRpw(
                          title: 'Recovered',
                          value: widget.todayRecovered.toString()),
                      ReuseableRpw(
                          title: 'Death', value: widget.totalDeaths.toString()),
                      ReuseableRpw(
                          title: 'Critical', value: widget.critical.toString()),
                      ReuseableRpw(
                          title: 'Active', value: widget.active.toString()),
                      ReuseableRpw(
                          title: 'Today Recovered',
                          value: widget.todayRecovered.toString()),
                      ReuseableRpw(
                          title: 'Test', value: widget.test.toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}
