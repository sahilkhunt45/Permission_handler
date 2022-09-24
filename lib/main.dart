import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color1 = Colors.red;
  Color color2 = Colors.red;
  Color color3 = Colors.red;
  Color color4 = Colors.red;
  Color color5 = Colors.red;
  Color color6 = Colors.red;
  Color color7 = Colors.red;
  Color color8 = Colors.red;
  Color color9 = Colors.red;
  Color color10 = Colors.red;
  Color color11 = Colors.red;
  List? state;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // checkPermision();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("All Permision"),
        leading: IconButton(
          onPressed: () async {
            await openAppSettings();
          },
          icon: const Icon(Icons.settings),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.circle, color: Colors.green),
                    Text(
                      "Permission Granted",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.circle, color: Colors.red),
                    Text(
                      "Permission Denied",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                onTap: () async {
                  var status1 = await Permission.location.request();
                  if (status1.isGranted) {
                    setState(() {
                      color1 = Colors.green;
                    });
                  }
                },
                leading: const Icon(
                  Icons.location_on,
                  size: 30,
                  color: Colors.teal,
                ),
                title: const Text(
                  "Location",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.teal,
                  ),
                ),
                trailing: Icon(
                  Icons.circle,
                  color: color1,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  var status2 = await Permission.camera.request();
                  if (status2.isGranted) {
                    setState(() {
                      color2 = Colors.green;
                    });
                  }
                },
                leading: const Icon(
                  Icons.camera_alt_rounded,
                  size: 30,
                  color: Colors.grey,
                ),
                title: const Text(
                  "Camera",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                ),
                trailing: Icon(
                  Icons.circle,
                  color: color2,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  var status3 = await Permission.storage.request();
                  if (status3.isGranted) {
                    setState(() {
                      color3 = Colors.green;
                    });
                  }
                },
                leading: const Icon(
                  Icons.storage,
                  size: 30,
                  color: Colors.red,
                ),
                title: const Text(
                  "Storage",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.red,
                  ),
                ),
                trailing: Icon(
                  Icons.circle,
                  color: color3,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  var status4 = await Permission.bluetooth.request();
                  if (status4.isGranted) {
                    setState(() {
                      color4 = Colors.green;
                    });
                  }
                },
                leading: const Icon(
                  Icons.bluetooth,
                  size: 30,
                  color: Colors.blue,
                ),
                title: const Text(
                  "Bluetooth",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                ),
                trailing: Icon(
                  Icons.circle,
                  color: color4,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  var status5 = await Permission.phone.request();
                  if (status5.isGranted) {
                    setState(() {
                      color5 = Colors.green;
                    });
                  }
                },
                leading: const Icon(
                  Icons.call,
                  size: 30,
                  color: Colors.green,
                ),
                title: const Text(
                  "Phone",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.green,
                  ),
                ),
                trailing: Icon(
                  Icons.circle,
                  color: color5,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  var status6 = await Permission.notification.request();
                  if (status6.isGranted) {
                    setState(() {
                      color6 = Colors.green;
                    });
                  }
                },
                leading: const Icon(
                  Icons.notifications_sharp,
                  size: 30,
                  color: Colors.cyan,
                ),
                title: const Text(
                  "Notification",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.cyan,
                  ),
                ),
                trailing: Icon(
                  Icons.circle,
                  color: color6,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  var status7 = await Permission.sms.request();
                  if (status7.isGranted) {
                    setState(() {
                      color7 = Colors.green;
                    });
                  }
                },
                leading: const Icon(
                  Icons.sms,
                  size: 30,
                  color: Colors.amber,
                ),
                title: const Text(
                  "SMS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.amber,
                  ),
                ),
                trailing: Icon(
                  Icons.circle,
                  color: color7,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  var status8 =
                      await Permission.manageExternalStorage.request();
                  if (status8.isGranted) {
                    setState(() {
                      color8 = Colors.green;
                    });
                  }
                },
                leading: const Icon(
                  Icons.location_searching_sharp,
                  size: 30,
                  color: Colors.blueGrey,
                ),
                title: const Text(
                  "Fileslocation",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blueGrey,
                  ),
                ),
                trailing: Icon(
                  Icons.circle,
                  color: color8,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  var status9 = await Permission.calendar.request();
                  if (status9.isGranted) {
                    setState(() {
                      color9 = Colors.green;
                    });
                  }
                },
                leading: const Icon(
                  Icons.calendar_month_rounded,
                  size: 30,
                  color: Colors.brown,
                ),
                title: const Text(
                  "Calender",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.brown,
                  ),
                ),
                trailing: Icon(
                  Icons.circle,
                  color: color9,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  var status10 = await Permission.sensors.request();
                  if (status10.isGranted) {
                    setState(() {
                      color10 = Colors.green;
                    });
                  }
                },
                leading: const Icon(
                  Icons.sensors,
                  size: 30,
                  color: Colors.deepPurple,
                ),
                title: const Text(
                  "Sensors",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.deepPurple,
                  ),
                ),
                trailing: Icon(
                  Icons.circle,
                  color: color10,
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () async {
                  var status11 = await Permission.contacts.request();
                  if (status11.isGranted) {
                    setState(() {
                      color11 = Colors.green;
                    });
                  }
                },
                leading: const Icon(
                  Icons.contacts,
                  size: 30,
                  color: Colors.indigo,
                ),
                title: const Text(
                  "Contact",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.indigo,
                  ),
                ),
                trailing: Icon(
                  Icons.circle,
                  color: color11,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
