from flask import Flask, render_template

import debugpy

# Enable debugging with a specific port number
debugpy.listen(('0.0.0.0', 5670))


app = Flask(__name__)

@app.route('/')
def index():
    # x = 10
    # y = "Hello, World!"+str(x)
    # return y
    return "dd"
@app.route('/hello/<name>')
def hello(name):
    return render_template('hello.html', name=name)

if __name__ == '__main__':
    app.run(debug=True, port=5003)
