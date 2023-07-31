import 'package:devs2blu_refactor/exercises/exe07/guest_repository.dart';
import 'package:devs2blu_refactor/exercises/exe07/list_tile_widget.dart';
import 'package:flutter/material.dart';

class Exe07 extends StatefulWidget {
  Exe07({super.key});

  @override
  State<Exe07> createState() => _Exe07State();
}

class _Exe07State extends State<Exe07> {
  GuestRepository guestRepository = GuestRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: const Color(0xFF10B684),
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
                child: const Text(
                  'Vamos criar uma tela que liste os convidados de uma festa.\nAo clicar em cada item, escreva no console (print), qual foi o convidado. \nO layout da tela fica a seu critério, divirta-se!,',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              centerTitle: true,
              title: const Text(
                'Exercício 7',
              ),
            ),
            floating: true,
            expandedHeight: 250.0,
            forceElevated: innerBoxIsScrolled,
          ),
        ];
      },
      body: ListView.builder(
        itemCount: guestRepository.guests.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTileWidget(
                imageUrl: guestRepository.guests[index].urlImg,
                name: guestRepository.guests[index].name,
                onPressed: () {
                  String guestName = guestRepository.guests[index].name;
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Deseja excluir \n$guestName?'),
                        content: Container(
                          width: 50,
                          height: 50,
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  guestRepository.guests.removeAt(index);
                                  Navigator.of(context).pop();
                                });
                              },
                              child: Text('Excluir')),
                          Spacer(),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cancelar')),
                        ],
                      );
                    },
                  );
                },
              ));
        },
      ),
    ));
  }
}

// ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: NetworkImage(
//                   guestRepository.guests[index].urlImg,
//                 ),
//                 radius: 25,
//               ),
//               title: Text(guestRepository.guests[index].name),
//               trailing: IconButton(
//                 icon: Icon(Icons.more_vert),
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         title: Text('Deseja excluir?'),
//                         content: Container(
//                           width: 100,
//                           height: 80,
//                           color: Colors.teal,
//                         ),
//                         actions: [
//                           TextButton(
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text('Cancelar')),
//                           Spacer(),
//                           TextButton(
//                               onPressed: () {
//                                 setState(() {
//                                   guestRepository.guests.removeAt(index);
//                                   Navigator.of(context).pop();
//                                 });
//                               },
//                               child: Text('Excluir')),
//                         ],
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),
