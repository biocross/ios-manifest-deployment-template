const express = require('express')
const app = express()

app.get('/', (req, res) => res.send('<head><script>window.location = window.location.origin + "/app"</script></head>'))
app.use('/app', express.static('public'))
app.listen(3000, () => console.log('Example app listening on port 3000!'))

