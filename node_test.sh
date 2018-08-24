#!/bin/bash
#
# Script to test node.js runtime

echo "=============== Node.js =============="
echo "[*] Creating myapp directory..."
echo

# Create directory and cd to it
mkdir myapp
cd myapp

# Create the package.json file
echo "[*] Creating package.json file..."
echo
echo '{
  "name": "myapp",
  "version": "1.0.0",
  "description": "",
  "main": "app.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "ISC"
}' > package.json

# Install Express silently
echo "[*] Installing Express..."
echo
npm install express --save > "/dev/null" 2>&1

# Create a sample app.js file
echo "[*] Creating test app.js file..."
echo
echo "const express = require('express')" >> app.js
echo "const app = express()" >> app.js
echo "app.get('/', (req, res) => res.send('Hello World!'))" >> app.js
echo "app.listen(3000, () => console.log('Hello World! Example app listening on port 3000!'))" >> app.js

# Run app.js in the background, sleep to manke sure we get an output to the console
echo "[*] Running app.js..."
echo
node app.js &

sleep 3 
echo

