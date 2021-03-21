#!/usr/bin/env bash

PROGRAM=pyKCS_Utility.py

isort --diff .

# mypy --strict --show-error-context --show-column-numbers --show-error-codes --pretty "$PROGRAM"
black --diff --check "$PROGRAM"
flake8 --count --show-source --statistics --max-line-length=100 "$PROGRAM"
pycodestyle --max-line-length=100 --show-source --statistics --count "$PROGRAM"
pylint "$PROGRAM"
pydocstyle -e -s --count "$PROGRAM"

echo -e "\e[32mSuccess\e[0m"
