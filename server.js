const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello Elevate Labs! My CI/CD Pipeline works!');
});

app.listen(port, () => {
  console.log(`App running on http://localhost:${port}`);
});
