import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: const Color(0xfff8D468),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [_ZapatoConSombra()],
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Positioned(bottom: 20, right: 0, child: _ZapatoSombra()),
          const Image(
            image: AssetImage('assets/imgs/azul.png'),
          )
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(color: Color(0xFFEAA14E), blurRadius: 40)
          ],
        ),
      ),
    );
  }
}
