#!/bin/bash

pip install virtualenv==20.0.15

virtualenv --python=/usr/bin/python3 ~/kivyenv

echo "" >> ~/.bashrc
echo "function workon() { source ~/\$1/bin/activate; }" >> ~/.bashrc
echo "export -f workon" >> ~/.bashrc

source ~/.bashrc
source ~/kivyenv/bin/activate

pip install -r requirements.txt

echo ""
echo "Setup complete. Run python3 main.py"
