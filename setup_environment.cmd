setup_environment.cmd (Windows Command Prompt Commands for Environment Setup)

at command prompt

@echo off
REM Create project directory
mkdir flask_project
cd flask_project

REM Step 1: Set up a virtual environment
python -m venv venv

REM Step 2: Activate the virtual environment
call venv\Scripts\activate.bat

REM Step 3: Install Flask
pip install flask

REM Step 4: Install PyInstaller (for packaging the app)
pip install pyinstaller

REM Notify user that environment setup is complete
echo Environment setup complete! Flask and PyInstaller have been installed.

pause


Explanation of the setup_environment.cmd File:
Create the Project Directory: Creates a folder called flask_project and navigates into it.
Set Up the Virtual Environment: Initializes a Python virtual environment in the flask_project\venv folder and activates it.
Install Flask: Installs Flask in the virtual environment, which is required for your Flask app.
Install PyInstaller: Installs PyInstaller, which will be used to package your app as a standalone .exe.
Completion Message: Prints a message notifying the user that Flask and PyInstaller have been successfully installed and the environment setup is complete.


How to Use:
Save the above code as setup_environment.cmd.
Run setup_environment.cmd by double-clicking it or executing it from the Command Prompt.
The script will:
Create a flask_project directory.
Set up a Python virtual environment.
Install Flask and PyInstaller in that environment.
Once complete, you’ll have an environment ready to run or package any Flask app.
