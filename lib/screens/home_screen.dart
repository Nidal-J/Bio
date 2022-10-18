import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'BIO',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Lato',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xffF6E3C5),
              Color(0xffA0D995),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 45,
              backgroundColor: Color(0xFF4CACBC),
              backgroundImage: AssetImage('images/nidal.jpg'),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              'Nidal Alraey',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Mobile Apps Developer',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1),
            ),
            const Divider(
              height: 50,
              thickness: 0.4,
              indent: 30,
              endIndent: 30,
              color: Colors.black45,
            ),
            BioCard(
              leading: Icons.email,
              title: 'Email me',
              subTitle: 'nidal.alraey@gmail.com',
              trailing: Icons.send,
              onPressedFunction: () {
                debugPrint('emailed');
              },
              marginButton: 10,
            ),
            BioCard(
              leading: Icons.phone_android,
              title: 'Contact me',
              subTitle: '00972 592 585 462',
              trailing: Icons.call,
              onPressedFunction: () {
                debugPrint('contacted');
              },
            ),
            const Spacer(),
            const Text(
              '2022',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Lato',
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class BioCard extends StatelessWidget {
  const BioCard({
    required IconData leading,
    required String title,
    required String subTitle,
    required IconData trailing,
    Function()? onPressedFunction,
    double marginButton = 0,
    Key? key,
  })  : _leading = leading,
        _title = title,
        _subTitle = subTitle,
        _trailing = trailing,
        _onPressedFunction = onPressedFunction,
        _marginButton = marginButton,
        super(key: key);

  final IconData _leading;
  final String _title;
  final String _subTitle;
  final IconData _trailing;
  final Function()? _onPressedFunction;
  final double _marginButton;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(30, 0, 30, _marginButton),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Icon(_leading),
        title: Text(_title),
        subtitle: Text(_subTitle),
        trailing: IconButton(
          onPressed: _onPressedFunction,
          icon: Icon(_trailing),
        ),
      ),
    );
  }
}
