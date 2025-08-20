from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/", methods=['GET', 'POST'])
def hello_world():
    if request.method == 'POST':
        email = request.form["email"]
        password = request.form["pass"]
        print(f"email is {email} and password is {password}")
        return "<p>Form submitted successfully!</p>"
    return render_template("index.html")

app.run(debug=True)