# Windows Sysadmin Portfolio

8 projets PowerShell pour Windows client/Server : inventaire, audit, journaux, réseau et automatisation.

## Projets

- **01-inventory** — Inventaire OS, machine, RAM et volumes en JSON.
- **02-service-audit** — Rapport CSV des services Windows.
- **03-event-triage** — Événements système critiques/erreurs récents.
- **04-firewall-audit** — État des profils Windows Firewall.
- **05-local-admin-audit** — Membres du groupe Administrateurs local.
- **06-disk-health** — Espace libre et pourcentage par volume.
- **07-network-diagnostics** — DNS, configuration IP et test TCP.
- **08-log-archive** — Archivage des logs anciens, simulation par défaut.

## Utilisation

- Lire le README de chaque projet avant de lancer les scripts.
- Tester dans une VM ou un laboratoire, pas directement en production.
- Ne jamais publier de mots de passe, clés privées, tokens ou données réelles.
- Les scripts d'audit sont non destructifs ; les playbooks Ansible modifient leurs machines cibles.