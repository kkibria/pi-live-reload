var livereload = require('livereload');
var server = livereload.createServer({delay: 2000});
server.watch("/home/pi/devcode/httpd/public");