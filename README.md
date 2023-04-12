# API-FIMU-Docker
## Récupérer le projet
```bash
git clone https://github.com/ArnaudCHEVALME/API-FIMU-Docker.git
cd API-FIMU-Docker
```

## Créer le .env
```bash
cp .env-template .env
```

## Lancer
```bash
docker-compose up -d
```
## Tout stopper et supprimer
```bash
docker-compose down
```
## Insérer des données test
Décomenter la ligne d'insert dans models/index.js
```bash
docker-compose build
docker-compose up -d
docker-compose down
```
Comenter la ligne d'insert dans models/index.js
```bash
docker-compose build
docker-compose up -d
```
C'est pas moi qui est choisi...
