from flask import Flask, render_template
import datetime

app = Flask(__name__)

@app.route('/')
def index():
    # headline = "Hello World !!!"
    headline = {'name':'asim','age':21}
    return render_template("index.html",headline=headline)

@app.route('/isItAug')
def Aug():
    now = datetime.datetime.now()
    aug_bool = now.month==8
    if aug_bool is True:
        headline = "YES"
    else:
        headline = "NO"
    return render_template('index.html',headline=headline)

@app.route('/hello/<name>')
def hello_name(name):
   return 'Hello %s!' % name

@app.route('/names')
def name():
    names = ['asm','r00d']
    return render_template('index.html',headline=names)

@app.route('/moreInfo')
def about():
    return render_template('aboutUs.html')


if __name__ == '__main__':
   app.run(debug = True)
