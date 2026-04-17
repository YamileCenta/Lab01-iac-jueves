const http = require('http');
const fs = require('fs');
const path = require('path');

const server = http.createServer((req, res) => {
    // Definimos la ruta del archivo index.html
    const filePath = path.join(__dirname, '..', 'web', 'pagina.html');

    // Leemos el archivo
    fs.readFile(filePath, (err, content) => {
        if (err) {
            res.writeHead(500);
            res.end('Error interno del servidor');
            return;
        }

        // Enviamos el contenido con el encabezado correcto
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.end(content, 'utf-8');
    });
});

const PORT = 3000;
server.listen(PORT, () => {
    console.log("Lab lab lab lab");
});