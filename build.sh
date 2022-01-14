#!/bin/bash
set -e

echo "Removing old ./build directory if still exists..."
rm -rf build 
echo "Done."
echo "Bulding new function verion..."
yarn build
echo "New function version successfully built."
echo "Copying over package.json..."
cp package.json ./build
echo "Copying complete."
cd build
echo "Installing production dependencies..."
npm install --only=prod
echo "Node modules successfully installed."
echo 'Zipping function...'
zip -r function.zip .
echo "Zipped!"