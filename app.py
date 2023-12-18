from flask import Flask, render_template
import json

app = Flask(__name__)

@app.route('/')
def index():
    # Load data from JSON file
    with open('portfolio.json', 'r') as file:
        data = json.load(file)
    return render_template('portfolio.html', data=data)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
