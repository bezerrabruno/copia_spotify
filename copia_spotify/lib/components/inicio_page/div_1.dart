import 'package:flutter/material.dart';

class Div1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
          height: 230,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Bem vindo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  card11(),
                  card11(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  card11(),
                  card11(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  card11(),
                  card11(),
                ],
              ),
            ],
          )),
    );
  }

  Widget card11() {
    return SizedBox(
      height: 60,
      width: 180,
      child: Card(
        color: Colors.blue,
      ),
    );
  }
}
