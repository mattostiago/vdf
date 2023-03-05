import 'package:flutter/material.dart';
import 'package:vdf/source/models/acomodacao.dart';
import 'package:vdf/source/models/amenidades.dart';
import 'package:vdf/source/models/imagem.dart';
import 'package:vdf/source/models/promocao.dart';

class Dados {
  //IMAGENS

  //INICIAL
  Imagem capaPagInicial =
      Imagem('assets/pousada/vista2.jpg', "Capa Vista", "Capa Vista Pousada");
  Imagem background =
      Imagem('assets/background.jpg', 'Background', 'Background');
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
  Amenidades smarttv =
      Amenidades(Icons.tv, "TV", "Essa acomodação conta com Smart TV.");
  Amenidades ventilador = Amenidades(Icons.wind_power_rounded, "Ventilador",
      "Essa acomodação conta ventilador.");
  Amenidades vistaMontanhas = Amenidades(Icons.photo, "Vista para as Montanhas",
      "Da janela do quarto é possível contemplar toda a exuberância das montanhas de Nova Friburgo.");
  Amenidades banheiroPrivado = Amenidades(Icons.shower, "Banheiro privativo",
      "Banheiro privativo com chuveiro com aquecimento.");
  Amenidades wifi = Amenidades(Icons.wifi, "Wi-Fi", "Wi-Fi grátis disponível.");
  Amenidades frigobar =
      Amenidades(Icons.ac_unit, "Frigobar", "Frigobar no apartamento.");
  Amenidades comVista = Amenidades(Icons.view_carousel_outlined, "Com Vista",
      "Com vista para as montanhas da cidade.");
  Amenidades secador =
      Amenidades(Icons.dry, "Secador", "Com secador de cabelo.");
  Amenidades roomService = Amenidades(
      Icons.room_service, "Serviço de Quarto", "Com serviço de quarto.");

//Pousada
  Imagem porDoSol1 =
      Imagem("assets/pousada/por-do-sol.jpg", "Pôr do Sol 1", "Pôr do Sol");
  Imagem porDoSol2 =
      Imagem("assets/pousada/por-do-sol-2.jpg", "Pôr do Sol 2", "Pôr do Sol");
  Imagem porDoSol3 =
      Imagem("assets/pousada/por-do-sol-3.jpg", "Pôr do Sol 3", "Pôr do Sol");
  Imagem cafe1 =
      Imagem("assets/pousada/cafe-1.jpg", "Café da manhã 1", "Café da manhã");
  Imagem cafe2 =
      Imagem("assets/pousada/cafe-2.jpg", "Café da manhã 2", "Café da manhã");
  Imagem cafe3 =
      Imagem("assets/pousada/cafe-3.jpg", "Café da manhã 3", "Café da manhã");
  Imagem cidade =
      Imagem("assets/pousada/cidade.jpg", "Cidade", "Nova Friburgo");
  Imagem fachada = Imagem("assets/pousada/fachada.jpg", "Fachada", "Fachada");
  Imagem jogos =
      Imagem("assets/pousada/jogos.jpg", "Sala de Jogos", "Sala de Jogos");
  Imagem sala1 = Imagem("assets/pousada/sala.jpg", "Sala", "Sala");
  Imagem sala2 = Imagem("assets/pousada/sala2.jpg", "Sala 2", "Sala");
  Imagem maps = Imagem("assets/pousada/maps.png", "Google Maps", "Maps");

  //dadosPaginaSobre
  String tituloSobre = "Um visual deslumbrante";
  String descricaoSobre =
      "Localizada em Nova Friburgo com uma vista deslumbrante do vale. Perto de tudo, mas longe dos ruídos da cidade. Bem perto de você: Trilhas, cachoeiras, restaurantes e pontos turísticos. Paz e tranquilidade em alto astral. A pousada dispões de mini quadra gramada de futebol / volei, gazebo no jardim, sala de lareira com TV, salão de jogos, terraço panorâmico, serviço de bar e Wi-Fi grátis.";
  //slideSobre
  List<Widget> pegarSlideSobre() {
    List<Imagem> imagens = [
      sala1,
      sala2,
      porDoSol1,
      porDoSol2,
      fachada,
      cidade,
      cafe2,
      cafe3,
      cafe1
    ];

    List<Widget> arrayWidgetsImagens = [];
    for (int i = 0; i < imagens.length; i++) {
      arrayWidgetsImagens.add(
        Image.asset(
          imagens[i].imagem,
          fit: BoxFit.cover,
        ),
      );
    }
    return arrayWidgetsImagens;
  }

//galeria
  pegarGaleria() {
    List galeria = [
      cidade,
      sala1,
      porDoSol1,
      cafe1,
      cafe2,
      cafe3,
      porDoSol2,
      porDoSol3,
      sala2,
      jogos,
      rosa,
      bouganville,
      lotusCima,
      margarida,
      banheiroBouganville
    ];
    return galeria;
  }

  pegarAcomodacoes() {
    //ACOMODAÇÕES
    Acomodacao standard_plus = Acomodacao(
        "Standard Plus",
        "A Suíte Standard Plus é confortável e privativa. Possui o aconchego com uma lareira e uma varanda com uma vista espetacular das montanhas de onde poderá apreciar toda a beleza que a natureza oferece. Também possui TV ,frigobar e ventilador, lençóis e toalhas. O hóspede ainda pode usufruir durante a estadia de área compartilhada com facilidades ( forno de microondas , louças, talheres) .",
        "Com lareira",
        [
          azaleia,
          banheiroAzaleia,
          azaleia1,
          banheiroAzaleia,
          lotusCima,
          lotusBanheiro
        ],
        [
          smarttv,
          frigobar,
          ventilador,
          vistaMontanhas,
          banheiroPrivado,
          secador,
          roomService,
          wifi,
        ],
        2);
    Acomodacao standard_superior = Acomodacao(
        "Standard Superior",
        "A Suíte Standard Superior é privativa e oferece todo o aconchego de uma casa de campo com uma varanda para contemplar a vista panorâmica das montanhas e da cidade . Possui 01 cama de casal 01 de solteiro ,TV ,frigobar, ventilador, lençóis e toalhas. O hóspede ainda pode usufruir durante a estadia de área compartilhada com facilidades ( forno de microondas , louças, talheres) .",
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
        [
          comVista,
          smarttv,
          wifi,
          ventilador,
          frigobar,
          vistaMontanhas,
          banheiroPrivado
        ],
        3);

    Acomodacao standard_economico_casal = Acomodacao(
        "Standard Econômico Casal",
        "A Suíte Standard une conforto e simplicidade com uma linda vista das montanhas . Essa suíte possui uma cama de casal , TV , ventilador, lençóis e toalhas. O hóspede ainda pode usufruir durante a estadia de área compartilhada com facilidades ( forno de microondas , louças, talheres) .",
        "Simplicidade",
        [margarida, margaridaBanheiro, gardenia, gardeniaBanheiro],
        [comVista, tv, ventilador, wifi, banheiroPrivado],
        2);

    Acomodacao standard_superior_casal = Acomodacao(
        "Standard Superior Casal",
        "A Suíte Standard Superior Casal é privativa e oferece todo o aconchego de uma casa de campo com uma varanda para contemplar toda a exuberante beleza das montanhas e da cidade . Possui 01 cama de casal, TV ,frigobar, ventilador, lençóis e toalhas. O hóspede ainda pode usufruir durante a estadia de área compartilhada com facilidades ( forno de microondas , louças, talheres) .",
        "Com varanda",
        [violeta, geranio, banheiroGeranio],
        [comVista, smarttv, frigobar, wifi, banheiroPrivado],
        2);
    Acomodacao standard_economico_triplo = Acomodacao(
        "Standard Econômico Triplo",
        "A Suíte Standard Triplo une conforto e simplicidade com uma linda vista das montanhas . Fica perto do jardim e possui uma cama de casal e 01 cama de solteiro , TV , ventilador, lençóis e toalhas. O hóspede ainda pode usufruir durante a estadia de área compartilhada com facilidades ( forno de microondas , louças, talheres) ",
        "Simplicidade",
        [margarida, margaridaBanheiro, gardenia, gardeniaBanheiro],
        [comVista, tv, ventilador, wifi, banheiroPrivado],
        3);
    Acomodacao configuracaoDiferente = Acomodacao(
        "Configuração Diferente",
        "Para uma configuração diferente, com uma quantidade de pessoas específicas, entre em contato conosco pelo Whatsapp",
        "Quantidade de pessoas",
        [fachada],
        [],
        4);

    return [
      standard_economico_casal,
      standard_plus,
      standard_superior,
      standard_superior_casal,
      standard_economico_triplo,
      configuracaoDiferente
    ];
  }

  pegarPromocoes() {
    //ACOMODAÇÕES
    Promocao promo1 = Promocao(
      "Promo1",
      "Promo1 descrição grande",
      "01 a 02/01/23",
      [porDoSol3],
    );
    Promocao promo2 = Promocao(
      "Promo2",
      "Promo2 descrição grande",
      "01 a 02/02/23",
      [cafe1],
    );

    return [
      promo1,
      promo2,
    ];
  }
}
