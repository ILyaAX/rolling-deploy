from flask import Flask
import datetime


app = Flask(__name__)

@app.route('/')
def index():
    return "version 0.1-2 " + str(datetime.datetime.now())

if __name__ == '__main__':
    app.run(debug=True)