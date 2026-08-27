# Luau Systems Portfolio

This repository contains a static, GitHub Pages–ready portfolio showcasing advanced Luau systems. It uses a hacker-style (green-on-black) theme and five sample projects with architecture notes and annotated code.

Projects

- Advanced Combat System — server-side hit validation, combo systems, AI reaction states.
- Flight System — input smoothing, prediction/reconciliation, lift/drag approximations.
- Stealth & AI — sensing cones, noise propagation, patrol graphs and scaling tips.
- Vehicle / Driving System — per-wheel traction, suspension, and network smoothing.
- Parkour / Movement System — ledge detection, vaults, animation blending.

How to publish (enable Pages)

1. In the repository: Settings → Pages. Select branch: **main**, folder: **/ (root)** and Save.
2. Wait 1–2 minutes for GitHub to build and publish the site. URL will be: `https://veezysheezyyeezy.github.io/luau-portfolio/`.
3. To use a custom domain, provide the domain to me and I will add a `CNAME` file to the repo root. You must then configure your DNS:
   - Create an A record pointing to GitHub Pages IPs (or use ALIAS/ANAME depending on provider) or a CNAME to `veezysheezyyeezy.github.io` for subdomains.
   - GitHub docs: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site

What I changed now

- Expanded index and all project pages with deeper architecture notes, networking/security considerations, API surfaces, and testing/performance tips.
- Kept example code in `/code` as annotated starting points you can replace with your full implementations.

What I still need from you

- Custom domain (if you want a CNAME file added) — send the domain exactly (e.g., `example.com` or `www.example.com`).
- Screenshots or GIFs to replace placeholders in `/assets/` (optional; I can upload them when you provide the files).

If you want me to add the CNAME now, reply with the domain and I will create the CNAME file. I cannot toggle Pages in your repo from this session (that setting requires access through the web UI or your GitHub account), but once Pages is enabled the site will publish automatically and the CNAME will be honored.
