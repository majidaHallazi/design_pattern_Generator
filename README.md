### Bibliothèque de Modèles de Conception  
**Important**  
Les modèles de conception sont accessibles via des liens GitHub intégrés dans l'application. Nous avons veillé à implémenter chaque modèle de conception dans un dépôt indépendant.  

---

### **Aperçu**  
La Bibliothèque de Modèles de Conception est une application web complète qui sert de ressource interactive pour apprendre et comprendre divers modèles de conception logicielle, cette application a pour objectif d'offrir aux développeurs des explications détaillées, des exemples, et des cas d'utilisation concrets pour les principaux modèles de conception.  

---

### **Fonctionnalités**  
- Explications détaillées des différents modèles de conception.  
- Interface utilisateur interactive avec une barre latérale pour une navigation facile.  
- Recherche alimentée par l'IA pour interroger les modèles de conception.  
- Design responsive pour une visualisation optimale sur différents appareils.  
- Accès direct aux dépôts GitHub contenant des implémentations indépendantes.  

---

### **Modèles de Conception Inclus**  
#### **Modèles de conception microservices**  
- **Agrégateur (Aggregator)**  
- **Passerelle API (API Gateway)**  
- **Saga**  
- **Disjoncteur (Circuit Breaker)**  
- **Traçage Distribué (Distributed Tracing)**  
- **Consommateur Idempotent (Idempotent Consumer)**  

#### **Modèles de conception classiques**  
- **Fabrique  
- **Constructeur  
- **Façade 
- **Stratégie 

---

### **Technologies Utilisées**  
- **Angular** : pour la construction de l'interface utilisateur.  
- **Next.js** : pour le rendu côté serveur et la génération de sites statiques.  
- **TypeScript** : pour un typage statique robuste.  
- **Tailwind CSS** : pour le design et le style des composants.  
- **OpenAI API** : pour la recherche alimentée par l'IA.  

---

### **Installation et Démarrage**  

1. **Cloner le dépôt principal**  
   ```bash
   git clone https://github.com/votre-repo/design-patterns-library.git
   cd design-patterns-library
   ```

2. **Installer les dépendances**  
   ```bash
   npm install
   ```

3. **Configurer les variables d'environnement**  
   Créez un fichier `.env.local` à la racine du projet et ajoutez-y vos clés d'API (par exemple, pour OpenAI).  
   ```env
   NEXT_PUBLIC_OPENAI_API_KEY=VotreCléAPI
   ```

4. **Démarrer l'application en mode développement**  
   ```bash
   npm run dev
   ```

5. **Accéder à l'application**  
   Ouvrez votre navigateur et accédez à : [http://localhost:3000](http://localhost:3000).  

