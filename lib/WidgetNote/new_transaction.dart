import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
	final Function addTx;

	NewTransaction(this.addTx);

	@override
	_NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
	final titleController = TextEditingController();

	final amountController = TextEditingController();
	DateTime _selectedDate;
	String dropdownValue;

	void submitData() {
		final enteredTitle = titleController.text;
		final enteredAmount = double.parse(amountController.text);

		if (enteredTitle.isEmpty ||
				enteredAmount <= 0 ||
				_selectedDate == null ||
				dropdownValue == null) {
			return;
		}

		widget.addTx(
			enteredTitle,
			enteredAmount,
			_selectedDate,
			dropdownValue,
		);

		Navigator.of(context).pop();
	}

	void _presenDatePicker() {
		showDatePicker(
						context: context,
						initialDate: DateTime.now(),
						firstDate: DateTime(2020),
						lastDate: DateTime.now())
				.then((pickedDate) {
			if (pickedDate == null) {
				return;
			}
			setState(() {
				_selectedDate = pickedDate;
			});
		});
	}

	@override
	Widget build(BuildContext context) {
		return Card(
			elevation: 5,
			child: Container(
				padding: EdgeInsets.all(10),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.end,
					children: <Widget>[
						TextField(
							decoration: InputDecoration(labelText: 'Title'),
							controller: titleController,
							onSubmitted: (_) => submitData(),
							// onChanged: (val) {
							//   titleInput = val;
							// },
						),
						TextField(
							decoration: InputDecoration(labelText: 'Amount'),
							controller: amountController,
							keyboardType: TextInputType.number,
							onSubmitted: (_) => submitData(),
							// onChanged: (val) => amountInput = val,
						),
						DropdownButton<String>(
							isExpanded: true,
							value: dropdownValue,
							icon: Icon(Icons.arrow_downward),
							iconSize: 20,
							elevation: 16,
							style: TextStyle(color: Colors.grey),
							underline: Container(
								height: 2,
								color: Colors.grey,
							),
							onChanged: (String newValue) {
								setState(() {
									dropdownValue = newValue;
								});
							},
							items: <String>[ 'Income', 'Outcome']
									.map<DropdownMenuItem<String>>((String value) {
								return DropdownMenuItem<String>(
									value: value,
									child: Text(value),
								);
							}).toList(),
							hint: Text(
								"Income/Outcome",
								style: TextStyle(
									color: Colors.grey,
								),
							),
						),
						Container(
							height: 75,
							child: Row(children: <Widget>[
								Text(_selectedDate == null
										? 'No Date choosen'
										: 'Picked Date : ${DateFormat.yMd().format(_selectedDate)}'),
								Container(
									margin: EdgeInsets.symmetric(
										vertical: 8,
										horizontal: 5,
									),
									child: RaisedButton(
										child: Text('choose date',
												style: TextStyle(fontWeight: FontWeight.bold)),
										textColor: Colors.purple,
										onPressed: _presenDatePicker,
									),
								),
							]),
						),
						SizedBox(
							height: 35,
						),
						RaisedButton(
							child: Text('Add Transaction'),
							color: Colors.purple,
							textColor: Colors.white,
							onPressed: submitData,
						),
					],
				),
			),
		);
	}
}
