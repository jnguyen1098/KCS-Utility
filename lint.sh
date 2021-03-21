#!/usr/bin/env bash

DRIVER=pyKCS_Utility.py

isort --diff .

# mypy --strict --show-error-context --show-column-numbers --show-error-codes --pretty "$DRIVER"
black --diff --check "$DRIVER"
flake8 --count --show-source --statistics --max-line-length=100 "$DRIVER"
pycodestyle --max-line-length=100 --show-source --statistics --count "$DRIVER"
pylint "$DRIVER"
pydocstyle -e -s --count "$DRIVER"

echo -e "\e[32mSuccess\e[0m"
