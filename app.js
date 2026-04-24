const http = require("http");

http
  .createServer(function (req, res) {
    res.write("Hello ! This is AF's node server responsding to your request.");
    res.end();
  })
  .listen(3000);

console.log("Server started on port 3000");
p;
