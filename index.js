const http = require('http');
const express = require('express')
const app = express();
const port = process.env.PORT

const bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({ extended: true }))
app.use(express.json())
app.use(express.urlencoded({ extended: false }))

app.get("/", (req, res) => {
  res.send("<h1>Fyniti Iq Payment running, updated deployment again</h1>")
})

const httpServer = http.createServer(app);
httpServer.listen(port, () => {
  console.log(`Server started on port ${port}`)
});
