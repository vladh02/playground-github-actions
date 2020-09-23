const os = require("os");
const http = require("http");

const handleRequest = (req, res) => {
  res.write(`Hi there! I'm being served from ${os.hostname()} \n\n`);
  res.end();
};

http.createServer(handleRequest).listen(3000);
