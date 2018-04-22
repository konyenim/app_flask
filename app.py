from flask import Flask

app = Flask(__name__)


@app.route('/')
def index():
    return 'hello flask'

@app.route('/about')
def about():
    return 'about flask'


app.run('0.0.0.0', debug=True)