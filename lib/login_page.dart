import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<String> _countries = ['+82 대한민국', '+81 일본', '+86 중국', '+84 베트남', '+91 미국'];
  String _selectedCountries = '+82 대한민국';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "로그인",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: new Icon(
          Icons.close,
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.phonelink_lock,
                  size: 40,
                  color: Color(0xff9865FC),
                ),
                SizedBox(width: MediaQuery.of(context).size.height * 0.01),
                Column(
                  children: const [
                    Text(
                      '디스코는 휴대폰 번호로만 로그인해요.',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      '인증목적으로만 사용되니 안심하세요!',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: DropdownButton(
                      value: _selectedCountries,
                      items: _countries.map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      )).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedCountries = value!;
                        });
                      },
                      underline: Container(),
                      isExpanded: true,
                    ),
                  )
                ),
                SizedBox(width: MediaQuery.of(context).size.height * 0.01),
                const Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '휴대폰 번호를 입력해주세요.',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.maxFinite, 50),
                primary: Colors.grey,
              ),
              onPressed: () {},
              child: const Text('인증문자 받기'),
            ),
          ],
        ),
      ),
    );
  }
}

