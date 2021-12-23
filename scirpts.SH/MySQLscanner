#! /bin/bash

# This script is designed to find hosts with MySQL
# installed Execute as: ./MySQLscanner.sh

echo "Enter the starting IP address : "
read FirstIP

echo "Enter the last octet of the IP Address : "
read LastOctetIP


echo "Enter the port number you want to scan for : "

read port

nmap -sT $FirstIP-$LastOctetIP -p $port > /dev/null -oG MySQLscan

cat MySQLscan | grep open > MySQLscan2

cat MySQLscan2

