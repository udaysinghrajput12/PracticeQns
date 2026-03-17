
const express = require("express");
const cors = require("cors");
const http = require("http");
const { Server } = require("socket.io");

const app = express();
app.use(cors());

const server = http.createServer(app);
const io = new Server(server, { cors: { origin: "*" } });

let stockPrice = 100;

io.on("connection", (socket) => {
  console.log("User connected");

  setInterval(() => {
    stockPrice = stockPrice + (Math.random() * 5 - 2);
    socket.emit("stockUpdate", {
      symbol: "AAPL",
      price: stockPrice.toFixed(2)
    });
  }, 3000);
});

server.listen(5000, () => {
  console.log("Server running on http://localhost:5000");
});
