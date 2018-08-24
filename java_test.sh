#!/bin/bash
#
# Script to test Java runtime

echo "=============== Java =============="

# Create simple java file
echo 'public class HelloWorld {
   public static void main(String[] args) {
      System.out.println("Hello World!");
   }
}' > HelloWorld.java

echo "[*] Testing Java..."
echo

# Complie the file we just made
javac HelloWorld.java

# Run the compiled code
java HelloWorld

echo

