#!/bin/bash

import geni.rspec.pg as pg

node.addService(pg.Execute(shell = "???", command = "sudo apt-get update")
node.addService(pg.Execute(shell = "???", command = "sudo apt-get install apache2")

echo "This is a silly script" > /tmp/silly.txt

