fs = require('fs')
code = fs.readFileSync __dirname + '/../index.html'
window.document.write "<pre><code>#{code}</code></pre>"
