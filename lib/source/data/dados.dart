import 'package:flutter/material.dart';
import 'package:vdf/source/models/acomodacao.dart';
import 'package:vdf/source/models/amenidades.dart';
import 'package:vdf/source/models/imagem.dart';

class Dados {
  //IMAGENS
  Imagem margarida = Imagem(
      'assets/acomodacoes/standard-casal/margarida.jpg', "Margarida", "");
  Imagem azaleia =
      Imagem('assets/acomodacoes/standard-plus/azaleia-2.jpg', "Azaleia", "");
  Imagem begonia =
      Imagem('assets/acomodacoes/standard-superior/begonia.jpg', "Begonia", "");
  Imagem bouganville = Imagem(
      'assets/acomodacoes/standard-superior/Bouganville.jpg',
      "Bouganville",
      "");
  Imagem bromelia = Imagem(
      'assets/acomodacoes/standard-superior/Bromelia.jpg', "Bromelia", "");
  Imagem rosa =
      Imagem('assets/acomodacoes/standard-superior/rosa.jpg', "Rosa", "");

  //AMENIDADES
  Amenidades tv =
      Amenidades(Icons.tv, "TV", "Essa acomodação conta com TV LCD.");
  Amenidades ventilador = Amenidades(Icons.wind_power_rounded, "Ventilador",
      "O Standard Casal conta ventilador.");
  Amenidades vistaMontanhas = Amenidades(Icons.photo, "Vista para as Montanhas",
      "Da janela do quarto é possível contemplar toda a exuberância das montanhas de Nova Friburgo.");
  Amenidades banheiroPrivado = Amenidades(Icons.shower, "Banheiro privativo",
      "Banheiro privativo com chuveiro com aquecimento.");
  Amenidades wifi = Amenidades(Icons.wifi, "Wi-Fi", "Wi-Fi grátis disponível.");

  pegarAcomodacoes() {
    //ACOMODAÇÕES
    Acomodacao standard_casal = Acomodacao(
      "Standard Casal",
      "A Suíte Standard alia simplicidade e conforto com uma linda vista para o vale da cidade de Nova Friburgo . Possui Tv e está perto de um jardim aonde o hóspede poderá ouvir o canto dos pássaros e sentir a tranquilidade proporcionada pela natureza.",
      "",
      [margarida, azaleia],
      [tv, ventilador, vistaMontanhas, banheiroPrivado],
    );
    Acomodacao standard_plus = Acomodacao(
      "Standard Plus",
      "A Suíte Standard alia simplicidade e conforto com uma linda vista para o vale da cidade de Nova Friburgo . Possui Tv e está perto de um jardim aonde o hóspede poderá ouvir o canto dos pássaros e sentir a tranquilidade proporcionada pela natureza.",
      "",
      [margarida, azaleia],
      [tv, ventilador, vistaMontanhas, banheiroPrivado],
    );
    Acomodacao standard_superior = Acomodacao(
      "Standard Superior",
      "A Suíte Standard alia simplicidade e conforto com uma linda vista para o vale da cidade de Nova Friburgo . Possui Tv e está perto de um jardim aonde o hóspede poderá ouvir o canto dos pássaros e sentir a tranquilidade proporcionada pela natureza.",
      "",
      [margarida, azaleia],
      [tv, ventilador, vistaMontanhas, banheiroPrivado],
    );
    Acomodacao standard_superior_casal = Acomodacao(
      "Standard Plus",
      "A Suíte Standard alia simplicidade e conforto com uma linda vista para o vale da cidade de Nova Friburgo . Possui Tv e está perto de um jardim aonde o hóspede poderá ouvir o canto dos pássaros e sentir a tranquilidade proporcionada pela natureza.",
      "",
      [margarida, azaleia],
      [tv, ventilador, vistaMontanhas, banheiroPrivado],
    );

    return [
      standard_casal,
      standard_plus,
      standard_superior,
      standard_superior_casal
    ];
  }
}
