#!/bin/bash

# Création du projet Next.js avec TypeScript, ESLint et Tailwind
echo "Création du projet Next.js..."
npx create-next-app@latest parcineapp --typescript --eslint --tailwind --app

# Se déplacer dans le répertoire du projet
cd parcineapp

# Installer les dépendances supplémentaires
echo "Installation des dépendances supplémentaires..."
npm install framer-motion swiper sharp lottie-react @lottiefiles/react-lottie-player

# Créer la structure de dossiers app
echo "Création de la structure app..."
mkdir -p app/products/\[category\]/\[slug\]
mkdir -p app/about
mkdir -p app/contact
mkdir -p app/faq
mkdir -p app/legal
mkdir -p app/privacy-policy
mkdir -p app/terms

# Créer les fichiers de base dans app
touch app/loading.tsx
touch app/error.tsx
touch app/not-found.tsx
touch app/sitemap.xml.ts
touch app/robots.txt.ts

# Créer les pages principales
touch app/products/page.tsx
touch app/products/loading.tsx
touch app/products/\[category\]/page.tsx
touch app/products/\[category\]/\[slug\]/page.tsx
touch app/about/page.tsx
touch app/contact/page.tsx
touch app/faq/page.tsx
touch app/legal/page.tsx
touch app/privacy-policy/page.tsx
touch app/terms/page.tsx

# Créer les dossiers de composants
echo "Création des dossiers de composants..."
mkdir -p components/layouts
mkdir -p components/ui
mkdir -p components/mobile
mkdir -p components/product
mkdir -p components/content
mkdir -p components/performance
mkdir -p components/seo

# Créer les composants de base
touch components/layouts/MainLayout.tsx
touch components/layouts/ProductLayout.tsx

touch components/ui/Header.tsx
touch components/ui/Footer.tsx
touch components/ui/Button.tsx
touch components/ui/Card.tsx

touch components/mobile/MobileNavigation.tsx
touch components/mobile/MobileFilter.tsx
touch components/mobile/MobileProductControls.tsx

touch components/product/ProductCard.tsx
touch components/product/CategoryCard.tsx
touch components/product/ProductGallery.tsx
touch components/product/ProductFilterSidebar.tsx
touch components/product/ProductSort.tsx
touch components/product/WhatsAppContactButton.tsx

touch components/content/ValueProposition.tsx
touch components/content/Testimonials.tsx
touch components/content/FAQ.tsx
touch components/content/CTASection.tsx

touch components/performance/LazyImage.tsx
touch components/performance/LazyComponent.tsx

touch components/seo/Meta.tsx
touch components/seo/ProductJsonLd.tsx
touch components/seo/LocalBusinessJsonLd.tsx

# Créer les dossiers de hooks, types et utils
echo "Création des dossiers hooks, types et utils..."
mkdir -p hooks
mkdir -p types
mkdir -p utils

touch hooks/useWhatsApp.ts
touch hooks/useMediaQuery.ts
touch types/index.ts
touch utils/data.ts
touch utils/performance.ts
touch utils/seo.ts

# Créer la structure de fichiers publics
echo "Création de la structure de fichiers publics..."
mkdir -p public/images/products
mkdir -p public/images/categories
mkdir -p public/images/testimonials
mkdir -p public/images/icons

mkdir -p public/data
touch public/data/products.json
touch public/data/categories.json
touch public/data/featured.json

# Créer les fichiers de configuration supplémentaires
echo "Création des fichiers de configuration..."
echo "Personnalisation des configurations..."

# Exemple de données JSON minimales pour démarrer
echo '[]' > public/data/products.json
echo '[]' > public/data/categories.json
echo '[]' > public/data/featured.json

# Création du fichier site.webmanifest
echo '{
  "name": "Parcine",
  "short_name": "Parcine",
  "icons": [
    {
      "src": "/android-chrome-192x192.png",
      "sizes": "192x192",
      "type": "image/png"
    },
    {
      "src": "/android-chrome-512x512.png",
      "sizes": "512x512",
      "type": "image/png"
    }
  ],
  "theme_color": "#ffffff",
  "background_color": "#ffffff",
  "display": "standalone"
}' > public/site.webmanifest

echo "Installation terminée avec succès! Le projet est prêt dans le dossier 'parcine'."
echo "Pour démarrer le serveur de développement, exécutez: cd parcine && npm run dev"