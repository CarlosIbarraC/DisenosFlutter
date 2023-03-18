import 'package:flutter/material.dart';

class BasicDisigneScreen extends StatelessWidget {
  const BasicDisigneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //imagen superior
          Image(image: AssetImage('assets/nevado.webp'),
          
          ),
          Title(),
          SizedBox(
            height: 20,
          ),
          Communication(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child: Text('Magna occaecat reprehenderit nisi amet labore. Culpa nisi do qui labore ex ad dolor sunt ex anim voluptate dolor commodo. Elit adipisicing laborum nisi dolor aliquip aliquip cupidatat esse. Laboris laborum qui voluptate exercitation do adipisicing veniam anim qui tempor amet sint tempor. Tempor laboris cupidatat consequat nostrud ex ullamco quis adipisicing labore occaecat sit commodo. Occaecat exercitation laboris nostrud incididunt commodo nisi veniam amet. Exercitation labore consectetur ex duis consequat mollit sunt incididunt occaecat ullamco mollit.',
            textAlign: TextAlign.justify,
           
            
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Nevado Taraky',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'fotografia Nueva Zelanda ',
              style: TextStyle(color: Colors.black38),
            ),
          ]),
          Expanded(child: Column()), //crea un espacio elastico
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class Communication extends StatelessWidget {
  const Communication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustonBotton(icon: Icons.phone, texto:'CALL'),
        CustonBotton(icon: Icons.send, texto:'ROUTE'),
        CustonBotton(icon: Icons.share, texto:'SHARE'),
        
      ],
    );
  }
}

class CustonBotton extends StatelessWidget {
  final IconData icon;
  final String texto;
  const CustonBotton({
    super.key, required this.icon, required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.amber),
        Text(
          texto,
          style: TextStyle(color: Colors.amber),
        )
      ],
    );
  }
}
