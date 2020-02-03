var liveServer = require("live-server");
 
var params = {
    port: 8083, 
    host: "0.0.0.0", 
    root: "./dist",
    open: true,
    file: "index.html",
    logLevel: 2,
};

liveServer.start(params);