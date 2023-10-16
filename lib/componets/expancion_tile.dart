import 'package:flutter/material.dart';

class FloatingField extends StatelessWidget {
  const FloatingField({
    super.key,
    required this.title,
    required this.initiallyExpanded,
    required this.text,
  });

  final String title;
  final bool initiallyExpanded;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: ExpansionTile(
        title: Text(
          title, 
          style: TextStyle( fontSize: 28)
        ), // Это видимое содержимое элемента
        iconColor: Color.fromARGB(255, 255, 194, 0),
        textColor: Colors.black,
        collapsedShape: Border(
          bottom: BorderSide(color: Colors.black)
        ),
        shape: Border(
          bottom: BorderSide(color: Color.fromARGB(255, 255, 194, 0))
        ),
        initiallyExpanded: initiallyExpanded,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Color.fromARGB(255, 255, 194, 0)))
            ),
            child: ListTile(
              title: Text(
                text,
                style: TextStyle(
                  fontSize: 14
                ),)
            ),
          )
          // Внутреннее содержимое, которое будет отображаться при развернутом элементе
        ],
      )
    );
  }
}

class FloatingFieldWithList extends StatelessWidget {
  const FloatingFieldWithList({
    super.key,
    required this.title,
    required this.initiallyExpanded,
    required this.texts,
  });

  final String title;
  final bool initiallyExpanded;
  final List<String> texts;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: ExpansionTile(
        title: Text(
          title, 
          style: TextStyle( fontSize: 28)
        ), // Это видимое содержимое элемента
        iconColor: Color.fromARGB(255, 255, 194, 0),
        textColor: Colors.black,
        collapsedShape: Border(
          bottom: BorderSide(color: Colors.black)
        ),
        shape: Border(
          bottom: BorderSide(color: Color.fromARGB(255, 255, 194, 0))
        ),
        initiallyExpanded: initiallyExpanded,
        children: <Widget>[
          Container(
            height: 300,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Color.fromARGB(255, 255, 194, 0)))
            ),
            child: ListView.builder(
              itemCount: texts.length, // Замените на количество элементов в вашем списке
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.circle), // Иконка точки
                  title: Text(texts[index]), // Текст элемента списка
                );
              },
            )
          )
          // Внутреннее содержимое, которое будет отображаться при развернутом элементе
        ],
      )
    );
  }
}