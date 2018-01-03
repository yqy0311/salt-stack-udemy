#!/bin/bash

## automate process of salt-master configuration changes

## clean previous configuration
sudo rm -rf /srv/*

## copy salt content into /srv
sudo cp -R salt /srv

## copy salt master conf into /etc/salt/
sudo cp master /etc/salt/

# restart salt master service and check its status
sudo /etc/init.d/salt-master restart
sudo /etc/init.d/salt-master status

