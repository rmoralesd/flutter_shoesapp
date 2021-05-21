import 'package:flutter/material.dart';
import 'package:flutter_shoesapp/src/widgets/custom_widgets.dart';
import 'package:flutter_shoesapp/src/widgets/zapato_size.dart';

class ZapatoDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ZapatoSizePreview(
            fullScreen: true,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  _MontoBuyNow(),
                  _ColoresYMas(),
                  _BotonesLikeCartSettings(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _BotonesLikeCartSettings extends StatelessWidget {
  const _BotonesLikeCartSettings({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const _BotonSombreado(
            icon: Icon(
              Icons.star,
              color: Colors.red,
              size: 25,
            ),
          ),
          const _BotonSombreado(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.red,
              size: 25,
            ),
          ),
          const _BotonSombreado(
            icon: Icon(
              Icons.settings,
              color: Colors.red,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class _BotonSombreado extends StatelessWidget {
  final Icon icon;
  const _BotonSombreado({
    Key key,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: -5,
                blurRadius: 20,
                offset: Offset(0, 19))
          ]),
      child: icon,
    );
  }
}

class _ColoresYMas extends StatelessWidget {
  const _ColoresYMas({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: const [
                Positioned(
                    left: 90, child: _BotonColor(color: Color(0xffC6D642))),
                Positioned(
                    left: 60, child: _BotonColor(color: Color(0xffFFAD29))),
                Positioned(
                    left: 30, child: _BotonColor(color: Color(0xff2099F1))),
                _BotonColor(color: Color(0xff364D56)),
              ],
            ),
          ),
          const BotonNaranja(
            texto: 'More related items',
            alto: 30,
            ancho: 170,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  final Color color;

  const _BotonColor({
    Key key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  const _MontoBuyNow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: const [
            Text(
              '\$180.0',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            Spacer(),
            BotonNaranja(
              texto: 'Buy now',
              ancho: 120,
              alto: 40,
            )
          ],
        ),
      ),
    );
  }
}
