var spawn = require('child_process').spawn
var os = require('os')

var command
if (os.platform() === 'win32') {
  command = 'scripts\\web.bat'
} else {
  command = 'scripts/web.sh'
}
var child = spawn(command, [])

child.stdout.on('data', function(data) {
  console.log(String(data).trim())
})

child.stderr.on('data', function(data) {
  console.error(String(data).trim())
})