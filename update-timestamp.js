// update-timestamp.js
const fs = require('fs');

const timestamp = new Date().toISOString().replace('T', ' ').split('.')[0];
const htmlPath = './index.html';

let html = fs.readFileSync(htmlPath, 'utf-8');
html = html.replace(/id="deploy-timestamp">.*?<\/span>/, `id="deploy-timestamp">${timestamp} PT</span>`);
fs.writeFileSync(htmlPath, html);
console.log(`✔ Timestamp updated to ${timestamp} PT`);
