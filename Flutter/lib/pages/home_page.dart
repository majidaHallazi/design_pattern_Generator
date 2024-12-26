import 'package:flutter/material.dart';
import 'chatbot_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Bienvenue !',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main Banner Section
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[900],
                ),
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Allez Vous Amuser !',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Laissez votre chatbot répondre à vos clients.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChatbotPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text('Commencez Gratuitement'),
                        ),
                        SizedBox(width: 16),
                        OutlinedButton(
                          onPressed: () {
                            // Défiler vers la section Learn More
                            _scrollController.animateTo(
                              _scrollController.position.maxScrollExtent,
                              duration: Duration(seconds: 1),
                              curve: Curves.easeInOut,
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.blue),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Learn More',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 32),

              // Information Cards Section
              Text(
                'Pourquoi choisir notre chatbot ?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: InfoCard(
                      title: 'Créez vos scénarios',
                      description:
                          'Développez facilement des scénarios sans codage.',
                      icon: Icons.design_services,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: InfoCard(
                      title: "Entraînez l'IA",
                      description:
                          'Facilitez la mise en oeuvre de votre intelligence artificielle.',
                      icon: Icons.memory,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: InfoCard(
                      title: 'Prise de contrôle humaine',
                      description:
                          'Ajoutez une touche humaine à vos interactions.',
                      icon: Icons.handshake,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: InfoCard(
                      title: 'Intégrations faciles',
                      description:
                          "Connectez-vous à n'importe quel outil externe.",
                      icon: Icons.integration_instructions,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 32),

              // Learn More Section with numbered features
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[850],
                ),
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Qu'est-ce que ce Chatbot ?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Notre chatbot est une solution intelligente conçue pour automatiser les interactions avec vos utilisateurs, "
                      "répondre à leurs questions en temps réel et fournir un support client efficace sans intervention humaine immédiate.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 32),

                    // Numbered Feature Cards
                    _buildFeatureCard(
                      '1.',
                      'Réponses instantanées',
                      'Notre chatbot offre des réponses instantanées pour améliorer l\'expérience utilisateur.',
                      Icons.access_time,
                    ),
                    SizedBox(height: 16),
                    _buildFeatureCard(
                      '2.',
                      'Intégration facile avec vos outils',
                      'Connectez le chatbot avec vos outils existants pour une utilisation fluide.',
                      Icons.link,
                    ),
                    SizedBox(height: 16),
                    _buildFeatureCard(
                      '3.',
                      'Personnalisation selon vos besoins',
                      'Vous pouvez personnaliser les réponses et les scénarios selon vos spécifications.',
                      Icons.settings,
                    ),
                    SizedBox(height: 16),
                    _buildFeatureCard(
                      '4.',
                      'Prise de contrôle humaine',
                      'Gardez le contrôle avec une option de transfert vers un agent humain.',
                      Icons.support_agent,
                    ),
                    SizedBox(height: 32),

                    // How to use the chatbot section
                    Text(
                      "Comment l'utiliser ?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildStepCard(
                          '1. Configurez vos scénarios',
                          'Définissez des questions fréquentes et les réponses adaptées.',
                          Icons.build,
                        ),
                        SizedBox(height: 16),
                        _buildStepCard(
                          '2. Ajoutez des réponses personnalisées',
                          'Personnalisez les réponses selon les besoins de votre entreprise.',
                          Icons.edit,
                        ),
                        SizedBox(height: 16),
                        _buildStepCard(
                          '3. Observez le chatbot interagir',
                          'Suivez les performances du chatbot avec les utilisateurs et ajustez les scénarios si nécessaire.',
                          Icons.visibility,
                        ),
                        SizedBox(height: 16),
                        _buildStepCard(
                          '4. Activez-le sur votre plateforme',
                          'Intégrez le chatbot directement sur votre site ou application mobile.',
                          Icons.launch,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String number, String title, String description, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            number,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 16),
          Icon(
            icon,
            color: Colors.blue,
            size: 40,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepCard(String title, String description, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 40,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  InfoCard({
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 40,
          ),
          SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
