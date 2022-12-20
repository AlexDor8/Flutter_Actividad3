import 'package:flutter/material.dart';

import 'firstRoute.dart';

class secondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
      ),
      body: Center(
          child: SizedBox(
              child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.network(
              'https://miro.medium.com/max/640/1*RbmhRUicKhfne7t_7Dqb5w.webp',
              fit: BoxFit.contain,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const <Widget>[
                  Text('Old Boy'),
                  Text(
                    "Park Chan-Wook",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(width: 80),
              Column(children: const <Widget>[
                Icon(Icons.star),
                Text('4.5'),
              ]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  Text(
                    "CALL",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    Icons.maps_home_work,
                    color: Colors.blue,
                  ),
                  Text(
                    "ROUTE",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                  Text(
                    "SHARE",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget> [
              Flexible(child:Text("Dae-soo (Choi Min-sik) es un hombre corriente, casado y con una hija, que un día es secuestrado sin razón aparente. Durante 15 años Dae-soo permanece encerrado en una extraña habitación-cárcel, completamente aislado del mundo, con una televisión como única compañía. Al ser liberado, en precarias condiciones físicas y mentales, y tras descubrir la muerte de su esposa y de su hija, estará dispuesto a todo. Sin nada que perder, su único objetivo será recuperarse para poder desentrañar el misterio y encontrar a su captor, que lo ha sometido a tan perverso experimento. Su pesadilla acaba de empezar.", style: TextStyle(fontSize: 12), )),
            ],
          ),
          ElevatedButton(
                      child: const Text('Volver'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyApp()));
                      }),
          Text(email),
          Text(password)
        ],
      ))),
    );
  }
}