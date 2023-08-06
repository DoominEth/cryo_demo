@echo off

REM Set the desired virtual environment name
set VENV_NAME=Cryo

REM Check if virtual environment exists, create it if necessary
if not exist %VENV_NAME%\Scripts\activate.bat (
    python -m venv %VENV_NAME%
)

REM Activate the virtual environment
call %VENV_NAME%\Scripts\activate.bat

REM Upgrade pip to ensure compatibility with newer packages
python -m pip install --upgrade pip

REM Install the required dependencies
pip install -r requirements.txt

REM Install the Jupyter kernel
python -m ipykernel install --user --name="%VENV_NAME%"


REM Launch JupyterLab
jupyter lab

REM Deactivate the virtual environment
deactivate
