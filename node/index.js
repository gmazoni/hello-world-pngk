const express = require('express')
const app = express()

app.get('/', (req, res) => {
    res.send(`Hello from: ${process.env.APP_NAME}`)
})

app.listen(Number(process.env.PORT), () => {
    console.log(`Example app listening on port ${process.env.PORT}`)
})
