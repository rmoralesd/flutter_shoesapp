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
                children: [
                  const ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  _MontoBuyNow()
                ],
              ),
            ),
          )
        ],
      ),
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
        margin: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            const Text(
              '\$180.0',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const Spacer(),
            const BotonNaranja(
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
