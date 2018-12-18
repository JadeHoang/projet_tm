# Projet Text Mining

## Pré-requis

### wiki_scraping.Rmd

- tidyverse
- rvest
- stringr
- rebus
- lubridate

### network.Rmd

- tidytext
- tidyverse
- igraph
- reshape2
- wordcloud
- ggraph
- widyr
- networkD3
- quanteda
- igraph

### sentiments.Rmd

- dplyr
- ggplot2
- tidytext

### resums.Rmd

- Git LFS pour importer gros jeu de données

- Données Glove disponibles ici : https://nlp.stanford.edu/data/glove.6B.zip

- dplyr
- tidytext
- wordcloud
- reshape2
- stringr
- ggplot2
- igraph
- ggraph
- widyr
- textrank

## Scripts

Exécuter les fichiers en ordre:
1. wiki_scraping.Rmd
2. network.Rmd
3. sentiments.Rmd
4. resums.Rmd

Les fichiers html sont stockés dans ***html***.

Les fichiers server et ui dans ***shiny***.

## wiki_scraping.Rmd
Récupérer les noms des personnages avec leurs groupes et les stocker dans un dataframe ***dict_perso*** (peut être charger à partir de ***dictionaire_perso.RData***

## network.Rmd
Les étapes à créer les réseaux sociaux des personnages dans chaque chapitre et le diagramme pour observer les coocurences des personnages tout au long le livra.

## sentiments.Rmd
Analyser les sentiments par partie, puis par chapitre pour trouver quelques sont les endroits où on peut observer les sentiments les plus négatives/positives du livre.

## resums.Rmd
Résumés du livre par les nuages de mots (simple), l'importance des chapitres, les paires de mots les plus fréquentes et enfin l'extraction des phrases qui paraissent important dans le livre.

## L'application Shiny
Démonstration interactive des graphes de relations entre les personnages par chapitre.
