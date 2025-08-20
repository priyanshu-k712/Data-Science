from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def hello_world():
    name = "Jack"
    language = "Python"
    lucky_numbers = [1,5,86,99,100]
    footer = "<p>Copyright 2025 </p> All rights reserved."
    return render_template("index.html", name=name, lang= language, lucky= lucky_numbers, footer= footer)

app.run(debug=True)