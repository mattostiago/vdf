import 'package:flutter/material.dart';
import 'package:vdf/source/models/acomodacao.dart';
import 'package:vdf/source/models/amenidades.dart';
import 'package:vdf/source/models/imagem.dart';

class Dados {
  //IMAGENS
  //Standard Casal
  Imagem margarida = Imagem('assets/acomodacoes/standard-casal/margarida.jpg',
      "Margarida", "Standard Casal");
  Imagem gardenia = Imagem('assets/acomodacoes/standard-casal/gardenia.jpg',
      "Gardenia", "Standard Casal");
  Imagem gardeniaBanheiro = Imagem(
      'assets/acomodacoes/standard-casal/banheiro-gardenia.jpg',
      "Banheiro Gardenia",
      "Standard Casal");
  Imagem margaridaBanheiro = Imagem(
      'assets/acomodacoes/standard-casal/margarida-banheiro.jpg',
      "Banheiro Margarida",
      "Standard Casal");

  //Standard Plus
  Imagem azaleia = Imagem('assets/acomodacoes/standard-plus/azaleia-2.jpg',
      "Azaleia", "Standard Plus");
  Imagem azaleia1 = Imagem('assets/acomodacoes/standard-plus/azaleia-1.jpg',
      "Azaleia", "Standard Plus");
  Imagem banheiroAzaleia = Imagem(
      'assets/acomodacoes/standard-plus/banheiro-azaleia.jpg',
      "Banheiro Azaleia",
      "Standard Plus");
  Imagem lotusCima = Imagem('assets/acomodacoes/standard-plus/lotus-cima.jpg',
      "Lotus (2º piso)", "Standard Plus");
  Imagem lotusBanheiro = Imagem(
      'assets/acomodacoes/standard-plus/lotus-banheiro.jpg',
      "Banheiro Lotus",
      "Standard Plus");

  //Standard Superior
  Imagem bromelia = Imagem('assets/acomodacoes/standard-superior/Bromelia.jpg',
      "Bromelia", "Standard Superior");
  Imagem banheiroBromelia = Imagem(
      'assets/acomodacoes/standard-superior/bromelia-banheiro.jpg',
      "Banheiro Bromelia",
      "Standard Superior");
  Imagem bouganville = Imagem(
      'assets/acomodacoes/standard-superior/Bouganville.jpg',
      "Bouganville",
      "Standard Superior");
  Imagem banheiroBouganville = Imagem(
      'assets/acomodacoes/standard-superior/bouganville-banheiro.jpg',
      "Banheiro Bouganville",
      "Standard Superior");
  Imagem begonia = Imagem('assets/acomodacoes/standard-superior/begonia.jpg',
      "Begonia", "Standard Superior");
  Imagem banheiroBegonia = Imagem(
      'assets/acomodacoes/standard-superior/begonia-banheiro.jpg',
      "Banheiro Begonia",
      "Standard Superior");
  Imagem rosa = Imagem('assets/acomodacoes/standard-superior/rosa.jpg', "Rosa",
      "Standard Superior");
  Imagem banheiroRosa = Imagem(
      'assets/acomodacoes/standard-superior/rosa-banheiro.jpg',
      "Rosa",
      "Standard Superior");

  //Standard Superior Casal
  Imagem geranio = Imagem(
      'assets/acomodacoes/standard-superior-casal/geranio.jpg',
      "Geranio",
      "Standard Superior Casal");
  Imagem banheiroGeranio = Imagem(
      'assets/acomodacoes/standard-superior-casal/geranio-banheiro.jpg',
      "Banheiro Geranio",
      "Standard Superior Casal");
  Imagem violeta = Imagem(
      'assets/acomodacoes/standard-superior-casal/violeta.jpg',
      "Violeta",
      "Standard Superior Casal");
  Imagem banheiroVioleta = Imagem(
      'assets/acomodacoes/standard-superior-casal/banheiro_violeta.jpg',
      "Banheiro Violeta",
      "Standard Superior Casal");

  //AMENIDADES
  Amenidades tv =
      Amenidades(Icons.tv, "TV", "Essa acomodação conta com TV LCD.");
  Amenidades ventilador = Amenidades(Icons.wind_power_rounded, "Ventilador",
      "Essa acomodação conta ventilador.");
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
      "Simplicidade",
      [margarida, margaridaBanheiro, gardenia, gardeniaBanheiro],
      [tv, ventilador, vistaMontanhas, banheiroPrivado],
    );
    Acomodacao standard_plus = Acomodacao(
      "Standard Plus",
      "A Suíte Standard Plus possui o aconchego de uma lareira, frigobar , TV de Led e uma varanda com uma linda vista para as montanhas , onde o hóspede poderá apreciar o canto dos pássaros e toda a beleza que a natureza oferece.  Faça sua reserva!",
      "Com lareira",
      [
        azaleia,
        banheiroAzaleia,
        azaleia1,
        banheiroAzaleia,
        lotusCima,
        lotusBanheiro
      ],
      [tv, ventilador, vistaMontanhas, banheiroPrivado],
    );
    Acomodacao standard_superior = Acomodacao(
      "Standard Superior",
      "A Suíte Standard Superior oferece todo o aconchego de uma casa de campo. Ela possui com frigobar , tv de Led e uma varanda onde o hóspede pode aproveitar para contemplar toda a exuberante beleza das montanhas e da cidade , do nascer ao pôr do sol.",
      "Com varanda",
      [
        bromelia,
        bouganville,
        banheiroBouganville,
        begonia,
        banheiroBegonia,
        rosa,
        banheiroRosa
      ],
      [tv, ventilador, vistaMontanhas, banheiroPrivado],
    );
    Acomodacao standard_superior_casal = Acomodacao(
      "Standard Superior Casal",
      "A Suíte Standard Superior Casal oferece todo o aconchego de uma casa de campo. Ela possui com frigobar , tv de Led e uma varanda onde o hóspede pode aproveitar para contemplar toda a exuberante beleza das montanhas e da cidade , do nascer ao pôr do sol.",
      "Com varanda",
      [violeta, geranio, banheiroGeranio],
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
