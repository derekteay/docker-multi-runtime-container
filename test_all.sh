#!/bin/bash
#
# Script to test all the runtime scripts
#
# Each echo statement in the if blocks manually sets
# the color output ("SUCCESS" = green, "FAIL" = red)
# and then resets output back to normal

echo
echo "[*] Running all tests..."
echo

sh python_test.sh
if [ $? -eq 0 ]; then
  echo "\e[1;42mSUCCESS\e[0m"
else
  echo "\e[1;41mFAIL\e[0m"
fi

sh node_test.sh
if [ $? -eq 0 ]; then
  echo "\e[1;42mSUCCESS\e[0m"
else
  echo "\e[1;41mFAIL\e[0m"
fi

sh java_test.sh
if [ $? -eq 0 ]; then
  echo "\e[1;42mSUCCESS\e[0m"
else
  echo "\e[1;41mFAIL\e[0m"
fi

sh dotnet_test.sh
if [ $? -eq 0 ]; then
  echo "\e[1;42mSUCCESS\e[0m"
else
  echo "\e[1;41mFAIL\e[0m"
fi

echo
echo "[*] All tests completed!"
echo

