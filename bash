#!/bin/bash

set -v

PARAMETER="starting.gz.tar.gz"

echo ${PARAMETER#*tar}

echo ${PARAMETER##*tar}

echo ${PARAMETER%.gz*}

echo ${PARAMETER%%.gz*}

echo ${PARAMETER/tar/top}
echo ${PARAMETER//tar/top}
echo ${PARAMETER/t*r/top}

ALPHABET=0123456789

echo ${ALPHABET:3:5}

echo ${ALPHABET:7}

echo ${#ALPHABET}
