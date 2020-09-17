import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enterAmount = double.parse(amountController.text);
    if (enteredTitle.isEmpty || enterAmount <= 0) {
      return;
    }
    addTx(
      titleController.text,
      double.parse(amountController.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (val){titleInput=val;},
              controller: titleController,
              onSubmitted: (_) => submitData,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (val){amountInput=val;},
              controller: amountController,
              onSubmitted: (_) => submitData,
            ),
            FlatButton(
              onPressed: submitData,
              textColor: Colors.lightGreenAccent,
              child: Text('Add transaction'),
            )
          ],
        ),
      ),
    );
  }
}
