
import 'package:flutter/material.dart';

class BeliBuku extends StatefulWidget {
  @override
  _BeliBukuState createState() => _BeliBukuState();
}

class _BeliBukuState extends State<BeliBuku> {
  @override
  

  @override
  Widget build(BuildContext context) {
 final appBar = AppBar(
      elevation: .5,
      title: Text('Toko Buku'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    
    return Scaffold(
      appBar: appBar,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Container(
            child: Text(
              "Pembelian berhasil :)", style: TextStyle(
                color: Colors.white,
                fontSize: 28
              ),
            )
          ),
        )
      ),
    );
  }
}