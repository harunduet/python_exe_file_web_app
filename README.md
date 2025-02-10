# python_exe_file_web_app
How to Create a Flask Web App and Convert It into a Standalone Executable (.exe)

Introduction

In today’s tutorial, we’ll walk through how to build a simple Flask web application and package it into a standalone executable (.exe) file for Windows. This process eliminates the need for the end user to have Python installed and allows you to distribute your Flask app as a native application. We'll also cover how to automatically open the web browser when running the .exe file, making it even more user-friendly.

Step 1: Setting Up the Virtual Environment

To start, we’ll first set up a virtual environment to keep the project dependencies isolated from your system Python environment. Follow these steps:

1. Create a new directory for your project:
mkdir flask_project
cd flask_project


2. Create a virtual environment:
   python -m venv venv

3. Activate the virtual environment:

On Windows: .\venv\Scripts\activate
On macOS/Linux: source venv/bin/activate

Step 2: Installing Flask

Once the virtual environment is activated, install Flask by running:
pip install flask

Step 3: Writing the Flask Web Application

Create a new Python file app.py and write the following Flask application:
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(debug=True)
    
This simple app will serve the text "Hello, World!" when you visit the root URL.

Step 4: Testing the Flask App

Before packaging the app into an executable, test it by running:
python app.py

Visit http://127.0.0.1:5000 in your browser, and you should see the "Hello, World!" message.

Step 5: Packaging the Flask App into an Executable (.exe)

Next, we’ll use PyInstaller to package the Flask app as a standalone .exe file.

1. Install PyInstaller:
pip install pyinstaller

2. Package the app with the following command:
pyinstaller --onefile --add-data "templates;templates" --add-data "static;static" app.py

This command bundles the Flask app into a single executable file. The .exe file will be located in the dist directory.

Step 6: Automatically Opening the Browser

We want the app to automatically open the browser when the .exe file is run. Modify the app.py file to include the webbrowser module:
import webbrowser
from flask import Flask
from threading import Timer

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

def open_browser():
    webbrowser.open("http://127.0.0.1:5000")

if __name__ == '__main__':
    Timer(1, open_browser).start()  # Open the browser after a short delay
    app.run(debug=True)
Rebuild the .exe file with PyInstaller. Now, when you run the .exe, the browser will open automatically at http://127.0.0.1:5000.

Step 7: Final Thoughts

By following these steps, you’ve successfully created a Flask web application and packaged it into a Windows executable. This process is useful when you want to distribute your Flask app to users without requiring them to install Python. The added convenience of automatically opening the browser enhances the user experience, making it feel like a native application.
