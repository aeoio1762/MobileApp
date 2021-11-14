import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/details.dart';
import 'package:flutter_login_ui/pages/shared/listItem.dart';
import 'package:flutter_login_ui/pages/widgets/list_widget.dart';

class facultyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _facultyPageState();
  }
}

class _facultyPageState extends State<facultyPage> {
  List<ListItem> listTiles = [
    ListItem(
        "Lorem Ipsum is simply dummy text",
        "https://www.medipol.edu.tr/medium/announcement-FirstImage-14572-webp.vsf",
        "28 Feb 2021",
        "Ciaron Ayala",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        "FacultyOfDentistry"),
    ListItem(
        "It is a long established fact",
        "https://www.medipol.edu.tr/medium/announcement-FirstImage-13659-webp.vsf",
        "28 Jan 2021",
        "Eduard Campbell",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        "FacultyOfDentistry"),
    ListItem(
        "Lorem Ipsum is simply dummy text",
        "https://www.medipol.edu.tr/medium/announcement-FirstImage-14095-webp.vsf",
        "14 Oct 2021",
        "Mari Cote",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        "FacultyOfDentistry"),
    ListItem(
        "Lorem Ipsum is simply dummy text",
        "https://www.medipol.edu.tr/medium/announcement-FirstImage-15136-webp.vsf",
        "11 Dec 2021",
        "Fahmida Mcpherson",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        "FacultyOfDentistry"),
    ListItem(
        "It is a long established fact",
        "https://www.medipol.edu.tr/medium/announcement-FirstImage-15001-webp.vsf",
        "11 Dec 2021",
        "Muhsin Zahid Uğur",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        "FacultyOfDentistry"),
    ListItem(
        "Lorem Ipsum is simply dummy text",
        "https://www.medipol.edu.tr/medium/announcement-FirstImage-14293-webp.vsf",
        "2 Mar 2021",
        "Zekayi Şen",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        "FacultyOfDentistry"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Faculty News",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
              ])),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            child: ListView.builder(
                itemCount: listTiles.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDetail(
                            item: listTiles[index],
                            tag: listTiles[index].header,
                          ),
                        ),
                      );
                    },
                    child: ListWidget(listTiles[index]),
                  );
                }),
          )),
    );
  }
}
