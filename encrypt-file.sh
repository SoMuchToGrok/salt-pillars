#!/bin/bash

cat "$@" | gpg --armor --batch --trust-model always --encrypt -r salt-masterless
