// Simple Express.js Application
const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Hello from Multi-Stage Build Application!');
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});

// To run this application:
// 1. Install dependencies: npm install
// 2. Start the server: node server.js
