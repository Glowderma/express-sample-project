const express = require('express')
const app = express()
app.disable('x-powered-by')
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`API is listening on port ${port}`)
})
