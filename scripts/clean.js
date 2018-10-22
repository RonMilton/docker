var spawn = require('child_process').spawn
var os = require('os')

var command
if (os.platform() === 'win32') {
  command = 'scripts\\clean.bat'
} else {
  command = 'scripts/clean.sh'
}
var child = spawn(command, [])

child.stdout.on('data', function(data) {
  console.log(String(data).trim())
})

child.stderr.on('data', function(data) {
  console.error(String(data).trim())
})
