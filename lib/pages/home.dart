import 'package:flutter/material.dart';
import 'package:flutterliquidswipeapp/widgets/liquidPages.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LiquidSwipe(
          //importando o liquidpages criado acima para ter acesso a lista criada ou models
          pages: liquidPages,
          //alterar para fazer teste de animação 300
          fullTransitionValue: 980,
          enableLoop: true, //habilitar ou desabilitar bom para produtos lista de produtos
          enableSlideIcon: true,

          //verificar tb as alterações posicionamento do icone 0.8 mais abaixo
          //positionSlideIcon: 0.9,//posição 0.0 centro - 0.9 fim - 0.-2 usar Com circularReveal
          //waveType: WaveType.circularReveal,

          positionSlideIcon: 0.5, //usar com LiquidReveal
          //2 efeitos liquidReveal e Circular reveal
          waveType: WaveType.liquidReveal,
          //adicionar oPCCB para evitar erro
          //adicionar utcb para evitar erro
          onPageChangeCallback: (page) => pageChangeCallBack(page),
          currentUpdateTypeCallback: (updateType) => updateTypeCallBack(updateType),
        ),
    );
  }
}

pageChangeCallBack(int page){
  print(page);
}

updateTypeCallBack(UpdateType updateType){
  print(updateType);
}