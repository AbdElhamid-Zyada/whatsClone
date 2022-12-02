import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contact_Card.dart';

class ContactsList extends StatelessWidget {
  List<ContactCard> contacts = [
    ContactCard(
      id: 1,
      name: "ahmed",
      phone: "01018417911",
    ),
    ContactCard(
      id: 2,
      name: "hesham",
      phone: "01668752441",
    ),
    ContactCard(
      id: 3,
      name: "zakaria",
      phone: "01557428996",
    ),
    ContactCard(
      id: 4,
      name: "amir",
      phone: "014887236955",
    ),
    ContactCard(
      id: 5,
      name: "haitham",
      phone: "015412336941",
    ),
    ContactCard(
      id: 1,
      name: "Essa",
      phone: "010244781932",
    ),
    ContactCard(
      id: 1,
      name: "affify",
      phone: "01966547128",
    ),
    ContactCard(
      id: 1,
      name: "Amir",
      phone: "01226584972",
    ),
    ContactCard(
      id: 1,
      name: "gamal",
      phone: "010447923685",
    ),
    ContactCard(
      id: 1,
      name: "akram",
      phone: "01012558749",
    ),
    ContactCard(
      id: 1,
      name: "herfy",
      phone: "01045998715",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context, index) =>
                buildContactCard(index, contacts[index]),
            separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 20,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                  ),
                ),
            itemCount: contacts.length),
      ),
    );
  }
}

Widget buildContactCard(index, ContactCard user) => Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text("$index"),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${user.phone}",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
