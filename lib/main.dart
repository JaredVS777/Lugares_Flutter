import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Text('Ubicaciones'),
              TitleSection(
                  name: 'Oeschinen Lake Campground',
                  location: 'Kandersteg, Switzerland'),
              ImageSection(image: 'images/lago.jpeg'),
              ButtonSection(),
              TextSection(
                  description:
                      'Ubicado en el corazón de los Alpes suizos, el campamento Oeschinen Lake ofrece vistas impresionantes y actividades al aire libre como senderismo, pesca y paseos en bote.'),
              TitleSection(name: 'Basílica del Voto Nacional', location: 'Quito, Ecuador'),
              ImageSection(image: 'images/image1.jpeg'),
              ButtonSection(),
              TextSection(
                  description:
                      'La iglesia de la Basílica, es un lugar turístico de la Ciudad de Quito en los cuales se pueden visitar las torres que ofrecen una vista panorámica del centro historico de Quito, además de mucha historia.'),
              TitleSection(name: 'Iglesia de San Francisco', location: 'Quito, Ecuador'),
              ImageSection(image: 'images/image2.jpg'),
              ButtonSection(),
              TextSection(
                  description:
                      'La Iglesia de San Francisco, un monumento imponente en el corazón de Quito, es una parada obligatoria para los amantes de la historia, el arte y la espiritualidad. '),
              TitleSection(name: 'Plaza Grande ', location: 'Quito, Ecuador'),
              ImageSection(image: 'images/image3.jpeg'),
              ButtonSection(),
              TextSection(
                  description:
                      'El corazón político y cultural de Quito, rodeada por el Palacio de Carondelet, la Catedral Metropolitana y otros edificios históricos. Es un lugar vibrante y lleno de historia.'),
              TitleSection(name: 'Isla Santay', location: 'Guayaquil, Ecuador'),
              ImageSection(image: 'images/image4.jpg'),
              ButtonSection(),
              TextSection(
                  description:
                      'Accesible desde Guayaquil por un puente peatonal, esta isla es una reserva natural que ofrece senderos para caminatas y ciclismo, observación de aves y un vistazo a la vida rural en sus pequeñas aldeas.'),
              TitleSection(name: 'Malecón del Salado', location: 'Guayaquil, Ecuador'),
              ImageSection(image: 'images/image5.jpg'),
              ButtonSection(),
              TextSection(
                  description:
                      'Un espacio recreativo a lo largo del estero Salado, con áreas verdes, restaurantes y un mercado de artesanías. Es ideal para pasear y disfrutar de la brisa del estero.'),
              TitleSection(name: 'Parque de las iguanas', location: 'Guayaquil, Ecuador'),
              ImageSection(image: 'images/image6.jpg'),
              ButtonSection(),
              TextSection(
                  description:
                      'Oficialmente conocido como Parque Seminario, este parque céntrico es famoso por las iguanas que deambulan libremente entre los visitantes. Es una experiencia única para ver a estos reptiles de cerca.'),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 226, 230, 11),
          ),
          const Text('69'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    );
  }
}
