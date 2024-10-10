#!/bin/bash
sudo clamscan -r --bell -i -ir --exclude-dir=^/sys --exclude-dir=^/dev --exclude-dir=^/proc / 
