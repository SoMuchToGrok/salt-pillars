#!/bin/bash

echo -n "$@" | gpg --armor --batch --trust-model always --encrypt -r salt-masterless
