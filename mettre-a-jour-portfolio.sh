#!/usr/bin/env bash
# Utilisation : placez ce script dans ~/portfolio puis lancez : bash mettre-a-jour-portfolio.sh
# L'ancien index.html est sauvegardé automatiquement avant d'être remplacé.

set -e

if [ -f index.html ]; then
  cp index.html "index.sauvegarde-$(date +%Y%m%d-%H%M%S).html"
  echo "Ancien index.html sauvegardé."
fi

cat > index.html <<'PORTFOLIO_HTML'
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Patient Akili | Réseaux sécurisés, développement web et design</title>
  <meta name="description" content="Portfolio de Patient Akili : réseaux sécurisés, développement web et design visuel. Découvrez mes compétences et mes projets.">
  <meta name="theme-color" content="#1F2329">

  <meta property="og:type" content="website">
  <meta property="og:locale" content="fr_FR">
  <meta property="og:title" content="Patient Akili | Portfolio">
  <meta property="og:description" content="Réseaux sécurisés, développement web et design visuel.">

  <link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 64 64'%3E%3Crect width='64' height='64' rx='14' fill='%231F2329'/%3E%3Ctext x='32' y='43' font-family='Arial' font-size='30' font-weight='800' text-anchor='middle' fill='%23B6FF2E'%3EPA%3C/text%3E%3C/svg%3E">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400..700&family=Sora:wght@500..800&display=swap" rel="stylesheet">

  <script src="https://cdn.tailwindcss.com/3.4.17"></script>
  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            ink: '#0F1215',          // fond le plus sombre
            graphite: '#1F2329',     // Deep Graphite
            panel: '#262B32',        // cartes
            lime: '#B6FF2E',         // Lime Compute
            'lime-deep': '#8CCB1F',  // fin du dégradé des boutons
            'lime-pale': '#E6FFA8',  // fin du dégradé des textes
            mist: '#E8EDE0'          // texte courant
          },
          fontFamily: {
            sans: ['Manrope', 'system-ui', 'sans-serif'],
            display: ['Sora', 'Manrope', 'system-ui', 'sans-serif']
          }
        }
      }
    }
  </script>

  <style>
    html { scroll-behavior: smooth; }
    body { background: #0F1215; }
    h1, h2, h3 { font-family: 'Sora', 'Manrope', system-ui, sans-serif; }
    section[id] { scroll-margin-top: 4rem; }
    .dots {
      background-image: radial-gradient(rgba(182, 255, 46, .10) 1px, transparent 1px);
      background-size: 28px 28px;
    }
    a:focus-visible, button:focus-visible {
      outline: 2px solid #B6FF2E;
      outline-offset: 3px;
      border-radius: 12px;
    }
    @keyframes rise { from { opacity: 0; transform: translateY(14px); } to { opacity: 1; transform: none; } }
    .rise { animation: rise .8s cubic-bezier(.2, .7, .2, 1) both; }
    .rise-2 { animation-delay: .12s; }
    @media (prefers-reduced-motion: reduce) {
      html { scroll-behavior: auto; }
      .rise { animation: none; }
    }
  </style>
</head>

<body class="font-sans text-mist/75 antialiased">

  <a href="#contenu" class="sr-only focus:not-sr-only focus:fixed focus:left-4 focus:top-4 focus:z-50 focus:rounded-xl focus:bg-lime focus:px-4 focus:py-2 focus:font-semibold focus:text-ink">Aller au contenu</a>

  <header class="fixed inset-x-0 top-0 z-30 border-b border-white/5 bg-ink/80 backdrop-blur">
    <nav class="mx-auto flex max-w-6xl items-center justify-between px-5 py-4 sm:px-8" aria-label="Navigation principale">
      <a href="#accueil" class="bg-gradient-to-r from-lime to-lime-pale bg-clip-text font-display text-lg font-extrabold tracking-tight text-transparent" aria-label="Patient Akili, retour à l'accueil">PA</a>
      <ul class="flex items-center gap-5 text-sm sm:gap-8">
        <li><a class="transition hover:text-lime" href="#competences">Compétences</a></li>
        <li><a class="transition hover:text-lime" href="#projets">Projets</a></li>
        <li><a class="transition hover:text-lime" href="#contact">Contact</a></li>
      </ul>
    </nav>
  </header>

  <main id="contenu">

    <!-- Accueil -->
    <section id="accueil" class="relative overflow-hidden bg-gradient-to-b from-graphite to-ink pb-20 pt-28 sm:pb-28 sm:pt-36">
      <div class="dots absolute inset-0" aria-hidden="true"></div>
      <div class="pointer-events-none absolute -left-24 top-24 h-[28rem] w-[28rem] rounded-full bg-lime/15 blur-[120px]" aria-hidden="true"></div>

      <div class="relative mx-auto grid max-w-6xl items-center gap-12 px-5 sm:px-8 md:grid-cols-[minmax(0,5fr)_minmax(0,6fr)] md:gap-16">

        <div class="rise mx-auto w-full max-w-md md:max-w-none">
          <div class="relative">
            <div class="absolute -inset-3 rounded-[2rem] bg-gradient-to-br from-lime via-lime/20 to-graphite opacity-60 blur-2xl" aria-hidden="true"></div>
            <div class="relative aspect-[4/5] overflow-hidden rounded-3xl border border-white/10 bg-panel">
              <!-- Placez votre photo dans le même dossier : photo.jpg (ou .jpeg, .png, .webp) -->
              <img id="photo" src="photo.jpg" width="800" height="1000" alt="Portrait de Patient Akili" class="h-full w-full object-cover grayscale">
              <div id="photo-fallback" class="absolute inset-0 hidden items-center justify-center bg-gradient-to-br from-lime to-lime-deep" aria-hidden="true">
                <span class="font-display text-8xl font-extrabold text-ink">PA</span>
              </div>
            </div>
          </div>
        </div>

        <div class="rise rise-2">
          <h1 class="text-4xl font-bold leading-[1.1] tracking-tight text-white sm:text-5xl">
            L'ingénierie au service de la
            <span class="bg-gradient-to-r from-lime to-lime-pale bg-clip-text text-transparent">créativité</span>.
          </h1>

          <p class="mt-6 max-w-xl text-lg leading-relaxed">
            Je m'appelle <strong class="font-bold text-lime">Patient Akili</strong>. Mon profil est hybride : je travaille à la croisée des réseaux sécurisés, du développement web et du design visuel.
          </p>
          <p class="mt-4 max-w-xl text-lg leading-relaxed">
            Mon objectif est de rendre la complexité technique accessible, en concevant des solutions fiables, fonctionnelles et visuellement marquantes.
          </p>

          <ul class="mt-8 flex flex-wrap gap-3" aria-label="Domaines d'expertise">
            <li class="rounded-xl border border-white/10 bg-panel px-4 py-2 text-sm text-mist/90">Télécoms et cloud</li>
            <li class="rounded-xl border border-white/10 bg-panel px-4 py-2 text-sm text-mist/90">Cybersécurité</li>
            <li class="rounded-xl border border-white/10 bg-panel px-4 py-2 text-sm text-mist/90">Design web</li>
            <li class="rounded-xl border border-white/10 bg-panel px-4 py-2 text-sm text-mist/90">Design graphique</li>
            <li class="rounded-xl border border-white/10 bg-panel px-4 py-2 text-sm text-mist/90">Stratégie digitale</li>
          </ul>

          <div class="mt-10 flex flex-wrap gap-4">
            <a href="#projets" class="rounded-xl bg-gradient-to-r from-lime to-lime-deep px-6 py-3 font-semibold text-ink transition hover:brightness-110">Voir mes projets</a>
            <a href="#contact" class="rounded-xl border border-white/15 px-6 py-3 font-semibold text-white transition hover:border-lime/60 hover:bg-white/5">Me contacter</a>
          </div>
        </div>
      </div>
    </section>

    <!-- Compétences -->
    <section id="competences" class="mx-auto max-w-6xl px-5 py-20 sm:px-8" aria-labelledby="titre-competences">
      <h2 id="titre-competences" class="max-w-2xl text-3xl font-bold tracking-tight text-white sm:text-4xl">Trois univers, une même exigence</h2>
      <p class="mt-4 max-w-2xl text-lg">Je relie infrastructure, code et design pour livrer des projets cohérents et solides, de la conception à la mise en production.</p>

      <div class="mt-12 grid gap-4 md:grid-cols-6">
        <article class="group relative overflow-hidden rounded-3xl border border-white/10 bg-panel p-8 md:col-span-3">
          <div class="absolute -right-10 -top-10 h-40 w-40 rounded-full bg-gradient-to-br from-lime to-graphite opacity-25 blur-2xl transition group-hover:opacity-50" aria-hidden="true"></div>
          <h3 class="relative text-2xl font-semibold text-white">Télécoms et cloud</h3>
          <p class="relative mt-3">Des réseaux, des infrastructures et des services cloud conçus pour être fiables et évolutifs.</p>
        </article>
        <article class="group relative overflow-hidden rounded-3xl border border-white/10 bg-panel p-8 md:col-span-3">
          <div class="absolute -right-10 -top-10 h-40 w-40 rounded-full bg-gradient-to-br from-lime to-graphite opacity-25 blur-2xl transition group-hover:opacity-50" aria-hidden="true"></div>
          <h3 class="relative text-2xl font-semibold text-white">Cybersécurité</h3>
          <p class="relative mt-3">La protection des réseaux et des systèmes, de la conception à l'exploitation.</p>
        </article>
        <article class="rounded-3xl border border-white/10 bg-panel p-6 md:col-span-2">
          <h3 class="text-xl font-semibold text-white">Design web</h3>
          <p class="mt-2 text-[0.95rem]">Des interfaces claires, rapides et adaptées à tous les écrans.</p>
        </article>
        <article class="rounded-3xl border border-white/10 bg-panel p-6 md:col-span-2">
          <h3 class="text-xl font-semibold text-white">Design graphique</h3>
          <p class="mt-2 text-[0.95rem]">Des identités et des visuels qui donnent à chaque projet une image cohérente.</p>
        </article>
        <article class="rounded-3xl border border-white/10 bg-panel p-6 md:col-span-2">
          <h3 class="text-xl font-semibold text-white">Stratégie digitale</h3>
          <p class="mt-2 text-[0.95rem]">Analyser un besoin et choisir les bons outils numériques pour y répondre.</p>
        </article>
      </div>
    </section>

    <!-- Projets (à remplacer par vos vrais projets) -->
    <section id="projets" class="mx-auto max-w-6xl px-5 py-20 sm:px-8" aria-labelledby="titre-projets">
      <h2 id="titre-projets" class="text-3xl font-bold tracking-tight text-white sm:text-4xl">Projets</h2>
      <p class="mt-4 max-w-2xl text-lg">Une sélection de mes réalisations récentes.</p>

      <div class="mt-12 grid gap-6 md:grid-cols-3">
        <article class="flex flex-col overflow-hidden rounded-3xl border border-white/10 bg-panel transition hover:-translate-y-1 hover:border-lime/40">
          <div class="h-44" style="background:linear-gradient(135deg,#B6FF2E 0%,#1F2329 100%)" aria-hidden="true"></div>
          <div class="flex flex-1 flex-col p-6">
            <h3 class="text-xl font-semibold text-white">Titre du projet 1</h3>
            <p class="mt-2 flex-1 text-[0.95rem]">Présentez en deux phrases ce que fait le projet et le problème qu'il résout.</p>
            <ul class="mt-4 flex flex-wrap gap-2" aria-label="Technologies utilisées">
              <li class="rounded-lg bg-ink/60 px-3 py-1 text-xs text-mist/80">HTML</li>
              <li class="rounded-lg bg-ink/60 px-3 py-1 text-xs text-mist/80">Tailwind</li>
            </ul>
            <a href="#" class="mt-5 inline-block font-semibold text-lime transition hover:text-lime-pale" aria-label="Voir le projet : Titre du projet 1">Voir le projet</a>
          </div>
        </article>

        <article class="flex flex-col overflow-hidden rounded-3xl border border-white/10 bg-panel transition hover:-translate-y-1 hover:border-lime/40">
          <div class="h-44" style="background:linear-gradient(200deg,#1F2329 0%,#B6FF2E 100%)" aria-hidden="true"></div>
          <div class="flex flex-1 flex-col p-6">
            <h3 class="text-xl font-semibold text-white">Titre du projet 2</h3>
            <p class="mt-2 flex-1 text-[0.95rem]">Présentez en deux phrases ce que fait le projet et le problème qu'il résout.</p>
            <ul class="mt-4 flex flex-wrap gap-2" aria-label="Technologies utilisées">
              <li class="rounded-lg bg-ink/60 px-3 py-1 text-xs text-mist/80">Réseau</li>
              <li class="rounded-lg bg-ink/60 px-3 py-1 text-xs text-mist/80">Sécurité</li>
            </ul>
            <a href="#" class="mt-5 inline-block font-semibold text-lime transition hover:text-lime-pale" aria-label="Voir le projet : Titre du projet 2">Voir le projet</a>
          </div>
        </article>

        <article class="flex flex-col overflow-hidden rounded-3xl border border-white/10 bg-panel transition hover:-translate-y-1 hover:border-lime/40">
          <div class="h-44" style="background:linear-gradient(45deg,#1F2329 0%,#6F9E24 55%,#B6FF2E 100%)" aria-hidden="true"></div>
          <div class="flex flex-1 flex-col p-6">
            <h3 class="text-xl font-semibold text-white">Titre du projet 3</h3>
            <p class="mt-2 flex-1 text-[0.95rem]">Présentez en deux phrases ce que fait le projet et le problème qu'il résout.</p>
            <ul class="mt-4 flex flex-wrap gap-2" aria-label="Technologies utilisées">
              <li class="rounded-lg bg-ink/60 px-3 py-1 text-xs text-mist/80">Design</li>
              <li class="rounded-lg bg-ink/60 px-3 py-1 text-xs text-mist/80">Identité visuelle</li>
            </ul>
            <a href="#" class="mt-5 inline-block font-semibold text-lime transition hover:text-lime-pale" aria-label="Voir le projet : Titre du projet 3">Voir le projet</a>
          </div>
        </article>
      </div>
    </section>

    <!-- Contact -->
    <section id="contact" class="relative overflow-hidden px-5 py-24 sm:px-8" aria-labelledby="titre-contact">
      <div class="pointer-events-none absolute left-1/2 top-1/2 h-80 w-[40rem] -translate-x-1/2 -translate-y-1/2 rounded-full bg-lime/15 blur-[120px]" aria-hidden="true"></div>
      <div class="relative mx-auto max-w-3xl text-center">
        <h2 id="titre-contact" class="text-4xl font-bold tracking-tight text-white sm:text-5xl">
          Un projet en tête ?
          <span class="bg-gradient-to-r from-lime to-lime-pale bg-clip-text text-transparent">Parlons-en.</span>
        </h2>
        <p class="mx-auto mt-5 max-w-xl text-lg">Écrivez-moi pour me présenter votre besoin : je vous répondrai rapidement.</p>

        <!-- À MODIFIER : votre vrai e-mail et vos vrais liens -->
        <div class="mt-10 flex flex-wrap items-center justify-center gap-4">
          <a href="mailto:ton.email@exemple.com" class="rounded-xl bg-gradient-to-r from-lime to-lime-deep px-6 py-3 font-semibold text-ink transition hover:brightness-110">Envoyer un e-mail</a>
          <a href="https://github.com/ton-profil" target="_blank" rel="noopener noreferrer" class="rounded-xl border border-white/15 px-6 py-3 font-semibold text-white transition hover:border-lime/60 hover:bg-white/5">GitHub</a>
          <a href="https://www.linkedin.com/in/ton-profil" target="_blank" rel="noopener noreferrer" class="rounded-xl border border-white/15 px-6 py-3 font-semibold text-white transition hover:border-lime/60 hover:bg-white/5">LinkedIn</a>
        </div>
      </div>
    </section>
  </main>

  <footer class="border-t border-white/5 px-5 py-8 text-center text-sm text-mist/60">
    © <span id="annee">2026</span> Patient Akili. Tous droits réservés.
  </footer>

  <script>
    // Photo : essaie plusieurs formats, sinon affiche les initiales
    (function () {
      var img = document.getElementById('photo');
      var fallback = document.getElementById('photo-fallback');
      var names = ['photo.jpg', 'photo.jpeg', 'photo.png', 'photo.webp'];
      var i = 0;
      img.addEventListener('error', function () {
        i++;
        if (i < names.length) {
          img.src = names[i];
        } else {
          img.classList.add('hidden');
          fallback.classList.remove('hidden');
          fallback.classList.add('flex');
        }
      });
    })();

    document.getElementById('annee').textContent = new Date().getFullYear();
  </script>
</body>
</html>
PORTFOLIO_HTML

echo "index.html mis à jour. Ouvrez-le dans votre navigateur : xdg-open index.html"
