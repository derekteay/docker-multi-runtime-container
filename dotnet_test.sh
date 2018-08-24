#!/bin/bash
#
# Script to test .NET Core runtime

echo "=============== .NET Core  =============="
echo "[*] Testing .NET Core..."
echo

# Create directory and cd to it
mkdir dotnet
cd dotnet

echo "[*] Creating new .NET console app..."
echo

# Create a new console application silently
dotnet new console > /dev/null 2>&1

echo "[*] Running .NET console app..."
echo

# Run the newly created console app
dotnet run

echo

