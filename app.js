// Import the http module
const http = require('http');

// Create an HTTP server
const server = http.createServer((req, res) => {
    // Set the response HTTP header with HTTP status and Content type
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    
    // Send the response body "Hello, World!"
    res.end('<h1>This My web application </h1>');
});

// Server listens on port 3000
const PORT = 3000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});
