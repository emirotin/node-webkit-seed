fs = require('fs')
code = fs.readFileSync(__dirname + '/../index.html').toString()

code = code
	.replace(/&/g, '&amp;')
	.replace(/</g, '&lt;')
	.replace(/>/g, '&gt;')

window.document.write "<pre><code>#{code}</code></pre>"
