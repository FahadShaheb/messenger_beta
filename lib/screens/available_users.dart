import 'package:flutter/material.dart';
import 'package:messenger_v1/controllers/welcome_controller.dart';
import 'package:messenger_v1/widgets/recent_chatlist.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home-screens";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _init = true;
  bool _isLoading = false;

  @override
  void didChangeDependencies() async {
    if (_init) {
      // Provider.of<WelcomeRoomsState>(context).getWelcomeRooms();
      _isLoading =
          await Provider.of<WelcomeRoomsState>(context).getWelcomeRooms();
      setState(() {});
    }
    _init = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final welcomes = Provider.of<WelcomeRoomsState>(context).welcomerooms;
    if (!_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            // Container(
            //   child: Text("JOHNSON"),
            // ),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: 350,
              child: GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.vertical,
                children: List.generate(welcomes.length, (i) {
                  return RecentChatList(
                    id: welcomes[i].id,
                    welcomeMsg: welcomes[i].welcomeMsg,
                    sender: welcomes[i].sender,
                    receiver: welcomes[i].receiver,
                  );
                }),
              ),
            )
          ],
        ),
      );
    }
  }
}
