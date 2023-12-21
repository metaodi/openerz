#!/bin/bash

set -e

[ ! -d pyenv ] && python -m venv pyenv
source pyenv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt
pip install -e .
