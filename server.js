const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('<h1>Bravo ! Ton serveur Node.js dans Docker fonctionne !</h1>');
});

app.listen(port, () => {
  console.log(`Serveur lancé sur http://localhost:${port}`);
});