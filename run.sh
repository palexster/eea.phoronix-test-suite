#!/bin/bash
#echo ynny | /usr/bin/phoronix-test-suite batch-setup
#phoronix-test-suite  user-config-set BatchMode PromptForTestIdentifier FALSE
#phoronix-test-suite  user-config-set BatchMode PromptForTestDescription FALSE
#phoronix-test-suite  user-config-set BatchMode PromptSaveName FALSE
#phoronix-test-suite  user-config-set BatchMode Configured FALSE
#/usr/bin/phoronix-test-suite phoromatic.connect $URL:80/$CODE
phoronix-test-suite $COMMAND
