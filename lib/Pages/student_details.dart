
import 'package:code4/Pages/student.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {

  final Student details;

  final List<String> titles = <String>[
    'Name',
    'Birthday',
    'Age',
    'Gender',
    'Address',
  ];

  DetailsPage({
    required this.details,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),

      ),
      body:
      ListView(
        padding: const EdgeInsets.only(left:2),
        shrinkWrap: true,
        children: <Widget>[

          ListTile(

            textColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
              ],
            ),
          ),
          const SizedBox(
            height: 6,

          ),
          ListTile(
            textColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Expanded(
                  flex: 4,
                  child: Text('Name'),
                ),
                Expanded(
                  flex: 9,
                  child: Text(': ${details.name}'),
                ),

              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            textColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Expanded(
                  flex: 4,
                  child: Text('Birthday'),
                ),
                Expanded(
                  flex: 9,
                  child: Text(': ${details.birthday}'),
                ),

              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            textColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Expanded(
                  flex: 4,
                  child: Text('Gender'),
                ),
                Expanded(
                  flex: 9,
                  child: Text(': ${details.gender}'),
                ),

              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            textColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Expanded(
                  flex: 4,
                  child: Text('Age'),
                ),
                Expanded(
                  flex: 9,
                  child: Text(': ${details.age}'),
                ),

              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            textColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Expanded(
                  flex: 4,
                  child: Text('Address'),
                ),
                Expanded(
                  flex: 9,
                  child: Text(': ${details.address}'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}