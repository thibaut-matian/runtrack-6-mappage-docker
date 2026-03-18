FROM node:20-slim 

# Création du dossier de travail
WORKDIR /app 

# On copie d'abord le package.json pour installer les outils
COPY package.json ./ 
RUN npm install

# On copie le reste des fichiers (dont server.js)
COPY . . 

# On indique le port utilisé
EXPOSE 3000 

# Commande pour démarrer le serveur
CMD ["node", "server.js"] 