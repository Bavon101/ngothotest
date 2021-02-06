import 'package:flutter/material.dart';
import 'package:ngothotest/Widgets/GenderFields.dart';
import 'package:pie_chart/pie_chart.dart';

class PieView extends StatefulWidget {
  PieView({Key key}) : super(key: key);

  @override
  _PieViewState createState() => _PieViewState();
}

class _PieViewState extends State<PieView> {
  Map<String, double> genderData = {
    "Men": 3,
    "Women": 5,
  };
  List<Color> colorList = [
    Colors.white,
    Colors.blue,
  ];
  double women = 42;
  double men = 58;
  update() {
    setState(() {
      genderData = {
        "Men": men,
        "Women": women,
      };
    });
  }

  @override
  void initState() {
    super.initState();
    update();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.grey[400],
          onPressed: () => Navigator.pop(context),
        ),
        shadowColor: Colors.grey[100],
        backgroundColor: Colors.white,
        title: CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: Text('3',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: height * .20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GenderFields(
                  gender: 'Men',
                  onChanged: (keyed) {
                    setState(() {
                      men = double.parse(keyed);
                    });
                    update();
                  },
                ),
                GenderFields(
                  gender: 'Women',
                  onChanged: (keyed) {
                    setState(() {
                      women = double.parse(keyed);
                    });
                    update();
                  },
                ),
              ],
            ),
            SizedBox(
              height: height * .10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * .45,
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gender:',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      PieChart(
                        dataMap: genderData,
                        animationDuration: Duration(milliseconds: 800),
                        chartLegendSpacing: 32,
                        chartRadius: width*.5,
                        colorList: colorList,
                        initialAngleInDegree: 0,
                        chartType: ChartType.disc,
                        ringStrokeWidth: 32,
                        legendOptions: LegendOptions(
                          showLegendsInRow: true,
                          legendPosition: LegendPosition.bottom,
                          legendShape: BoxShape.rectangle,
                          showLegends: true,
                          legendTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValueBackground: true,
                          showChartValues: true,
                          showChartValuesInPercentage: true,
                          showChartValuesOutside: false,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
