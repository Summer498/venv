# venv
## Abstract
Reduce keystroke to make &amp; activate venv

## Prepare
Install python for all user
  - venv.ps1 assumes that python is at C:/Program Files/Python{$python_version}/python.exe

## Installation
1. Clone this repository.
`git clone https://github.com/Summer498/venv`
  - You can also copy the source code to venv.ps1
2. Set PATH to the root of the repository folder.
  - To call from anywhere

## Use
1. Create a virtual environment.

`venv VENV_NAME`
  - Equals to `python -m venv VENV_NAME`.

`venv VENV_NAME2 3.7`
  - Equals to `C:/Program Files/python37/python -m venv VENV_NAME2`.

`venv VENV_NAME3 37`
  - Equals to `C:/Program Files/python37/python -m venv VENV_NAME3`.

2. You can activate the virtual environment with a more simple command.

  `./activate`
  - Equals to `VENV_NAME/Scripts/activate`.
  - If multiple virtual environments are available, activate.ps1 activates the newest one.
