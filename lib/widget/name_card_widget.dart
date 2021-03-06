import 'package:flutter/material.dart';


class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        children:<Widget>
        [Image.asset("assets/code.jpg"),
        SizedBox(
          height:20,
        ),
        Text(myText , style: TextStyle(fontSize:26, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter some text", labelText: "Name",
            ),
          ),
        )
        ],
      )

    );
  }
}