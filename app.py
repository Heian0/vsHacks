from pydoc import render_doc
from flask import Flask, render_template, url_for, request, redirect
from flask_sqlalchemy import SQLAlchemy
import sqlalchemy
from datetime import datetime

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///test.db'
db = SQLAlchemy(app)

"""""
class Todo(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    content = db.Column(db.String(200), nullable = False)
    completed = db.Column(db.Integer, default = 0)
    date_created = db.Column(db.DateTime, default = datetime.utcnow)
    
    def __repr__(self):
        return '<Task %r>' % self.id
        
"""""
    
    
@app.route('/', methods = ['POST', 'GET'])
def get_answer():
    if request.method =='POST':
        given_ans = request.form['answer_choice']
        print(given_ans)
        return render_template("index.html")
    
    else:
        return render_template("index.html")

if __name__ == "__main__":
    
    app.run(debug = True)
