import 'package:flutter/material.dart';

class Future_Mall_todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new TodoList(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  createState() => new TodoListState();
}

class TodoListState extends State<TodoList> {
  List<String> _todoItems = [];

  void _addTodoItem(String task) {
    if (task.length > 0) {
      setState(() => _todoItems.add(task));
    }
  }

  void _removeTodoItem(int index) {
    setState(() => _todoItems.removeAt(index));
  }

  void _promptRemoveTodoItem(int index) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
              title: new Text('Mark "${_todoItems[index]}" as done?'),
              actions: <Widget>[
                new FlatButton(
                    child: new Text('CANCEL'),
                    // The alert is actually part of the navigation stack, so to close it, we
                    // need to pop it.
                    onPressed: () => Navigator.of(context).pop()),
                new FlatButton(
                    child: new Text('MARK AS DONE'),
                    onPressed: () {
                      _removeTodoItem(index);
                      Navigator.of(context).pop();
                    })
              ]);
        });
  }

  Widget _buildTodoList() {
    return new ListView.builder(
      itemBuilder: (context, index) {
        if (index < _todoItems.length) {
          return _buildTodoItem(_todoItems[index], index);
        } else
          return Container(
            child: Text(""),
          );
      },
    );
  }

  Widget _buildTodoItem(String todoText, int index) {
    return new ListTile(
        title: new Text(todoText), onTap: () => _promptRemoveTodoItem(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Text("Make Your List",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                  // fontFamily: 'sans-serif-light',
                  color: Colors.black)
              // textScaleFactor: 1.1,
              ),
        ),
      ),
      body: _buildTodoList(),
      floatingActionButton: new FloatingActionButton(
          onPressed: _pushAddTodoScreen,
          tooltip: 'Add task',
          child: new Icon(
            Icons.add,
            color: Colors.black,
          )),
    );
  }

  void _pushAddTodoScreen() {
    // Push this page onto the stack
    Navigator.of(context).push(
        // MaterialPageRoute will automatically animate the screen entry, as well as adding
        // a back button to close it
        new MaterialPageRoute(builder: (context) {
      return new Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text("Add item in your list",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0,
                      // fontFamily: 'sans-serif-light',
                      color: Colors.black)
                  // textScaleFactor: 1.1,
                  ),
            ),
          ),
          body: new TextField(
            autofocus: true,
            onSubmitted: (val) {
              _addTodoItem(val);
              Navigator.pop(context); // Close the add todo screen
            },
            decoration: new InputDecoration(
                hintText: 'Add Item',
                contentPadding: const EdgeInsets.all(16.0)),
          ));
    }));
  }
}
