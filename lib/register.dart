import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = false;
  String? genderSelected;
  bool emailNotification = false;
  bool phoneNotification = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Image.asset('PUC.png'),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome',
              ),
              maxLength: 50,
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 15),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Telefone',
              ),
              maxLength: 15,
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 15),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 15),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
              obscureText: !showPassword,
              maxLength: 20,
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text('Data de Nascimento: '),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: dobController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'DD/MM/AAAA',
                    ),
                    maxLength: 10,
                    keyboardType: TextInputType.datetime,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text('Gênero: '),
                SizedBox(width: 10),
                Row(
                  children: [
                    Radio(
                      value: 'Masculino',
                      groupValue: genderSelected,
                      onChanged: (String? value) {
                        setState(() {
                          genderSelected = value;
                        });
                      },
                    ),
                    Text('Masculino'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Feminino',
                      groupValue: genderSelected,
                      onChanged: (String? value) {
                        setState(() {
                          genderSelected = value;
                        });
                      },
                    ),
                    Text('Feminino'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Switch(
                  value: emailNotification,
                  onChanged: (bool value) {
                    setState(() {
                      emailNotification = value;
                    });
                  },
                ),
                Text('Notificações via E-mail'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Switch(
                  value: phoneNotification,
                  onChanged: (bool value) {
                    setState(() {
                      phoneNotification = value;
                    });
                  },
                ),
                Text('Notificações via Telefone'),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _registerUser,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size(250, 50),
              ),
              child: Text(
                'Cadastrar',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _registerUser() {
  }
}