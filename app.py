import webbrowser
from flask import Flask
from threading import Timer

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

def open_browser():
    webbrowser.open("http://127.0.0.1:5000")  # This will open the app in the default browser

if __name__ == '__main__':
    # Schedule the browser opening after a short delay to ensure the Flask app has started
    Timer(1, open_browser).start()
    app.run(debug=True)
