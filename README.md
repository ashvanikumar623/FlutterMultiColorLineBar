# FlutterMultiColorLineBar
![MultiColorLineBar](https://user-images.githubusercontent.com/75613389/121510523-58e54600-ca05-11eb-98ce-c0513221235d.png)


List<Map<String, int>> list = <Map<String, int>>[
    {"count": 500, "color": Colors.purpleAccent.value},
    {"count": 300, "color": Colors.red.value},
    {"count": 150, "color": Colors.blue.value}
  ];


Or


 List<Map<String, int>> list = <Map<String, int>>[
    {"count": 500, "color": 4278190080},
    {"count": 300, "color": 4285009936},
    {"count": 150, "color": 4280788853}
  ];

----------------------------------------------------------------------------------------------------------

 Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            child: CustomPaint(
              painter: MultiColorLineBar(15, list),       // Height, Data List
            ),
          ),
