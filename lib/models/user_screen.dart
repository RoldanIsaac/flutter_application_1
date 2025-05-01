import 'package:flutter/material.dart';
import 'database_helper.dart';
import 'user_model.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key, required this.title});
  final String title;

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  // final DatabaseHelper _dbHelper = DatabaseHelper();
  // final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _emailController = TextEditingController();
  // List<User> _users = [];

  // @override
  // void initState() {
  //   super.initState();
  //   _loadUsers();
  // }

  // Future<void> _loadUsers() async {
  //   final users = await _dbHelper.getUsers();
  //   setState(() => _users = users);
  // }

  // Future<void> _addUser() async {
  //   final newUser = User(
  //     name: _nameController.text,
  //     email: _emailController.text,
  //     createdAt: DateTime.now(),
  //   );
  //   await _dbHelper.insertUser(newUser);
  //   _nameController.clear();
  //   _emailController.clear();
  //   _loadUsers();
  // }

  // Future<void> _deleteUser(int id) async {
  //   await _dbHelper.deleteUser(id);
  //   _loadUsers();
  // }

  String _message = '';

  void sayHelloWorld() {
    setState(() {
      _message = 'Hello World';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CRUD de Usuarios')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You will be the best person you will ever find',
            ),
            Text('$_message')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: sayHelloWorld,
          tooltip: 'increment',
          child: const Icon(Icons.add)),

      //     body: Padding(
      //       padding: const EdgeInsets.all(16.0),
      //       child: Column(
      //         children: [
      //           TextField(
      //             controller: _nameController,
      //             decoration: InputDecoration(labelText: 'Nombre'),
      //           ),
      //           TextField(
      //             controller: _emailController,
      //             decoration: InputDecoration(labelText: 'Email'),
      //           ),
      //           ElevatedButton(
      //             onPressed: _addUser,
      //             child: Text('Agregar Usuario'),
      //           ),
      //           Expanded(
      //             child: ListView.builder(
      //               itemCount: _users.length,
      //               itemBuilder: (context, index) {
      //                 final user = _users[index];
      //                 return ListTile(
      //                   title: Text(user.name),
      //                   subtitle: Text(user.email),
      //                   trailing: IconButton(
      //                     icon: Icon(Icons.delete, color: Colors.red),
      //                     onPressed: () => _deleteUser(user.id!),
      //                   ),
      //                   onTap: () {
      //                     // Opcional: Navegar a pantalla de edición
      //                   },
      //                 );
      //               },
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
    );
  }
}
