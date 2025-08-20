from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template("index.html")
@app.route("/about")
def about():
    return "<p>Hello, I am about page!</p>"
@app.route("/contact")
def countact():
    return "<p>Hello, I am contact page!</p>"


app.run(debug=True)