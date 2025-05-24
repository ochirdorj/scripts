#!/bin/bash

vmstat >> ram.log 2>&1

df -h >> hdd.log 2>&1