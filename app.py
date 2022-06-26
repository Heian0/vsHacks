from pydoc import render_doc
from typing import Any
from unittest import result
from flask import Flask, render_template, url_for, request, redirect
from soft_ans import Soft_ans;
from flask_sqlalchemy import SQLAlchemy
import sqlalchemy
from datetime import datetime
from flask_mysqldb import MySQL
import yaml
from exam import Exam

app = Flask(__name__)

with open('vsHacksDB.yaml', 'r') as file:
    db = yaml.safe_load(file)

app.config['MYSQL_HOST'] = db['mysql_host']
app.config['MYSQL_DB'] = 'vsHacks'
app.config['MYSQL_USER'] = 'vsHacksUser'
app.config['MYSQL_PASSWORD'] = 'vsHacks'

vsHacksDB = MySQL(app)

user_soft_ans = Soft_ans()

@app.route('/')
def index():
    user_soft_ans.clear_soft_ans_list()
    return redirect ('/display_prob')


@app.route('/display_prob', methods = ['POST', 'GET'])
def ans_submitted():
    
    test = Exam.generate_exam(vsHacksDB, [3, 5])
    for x in test: print(test[x])
    
    cur = vsHacksDB.connection.cursor()
    result_value = cur.execute("SELECT * FROM Problems WHERE module_id = 3")
    if result_value > 0:
        problems = cur.fetchall()    
        render_template("index.html", problems = problems)
    
    if request.method =='POST':
        
        try:
            given_ans = request.form['answer_choice']
            user_soft_ans.write_to_ans_list(given_ans)
            user_soft_ans.display_ans_list()
            return redirect ('/')
        
        except:
            return redirect ('/')
    
    else:
        return render_template("index.html")
    
@app.route('/question-select.html', methods = ['POST', 'GET'])
def get_answer():
    if request.method =='POST':
        given_ans = request.form['answer_choice']
        print(given_ans)
        return render_template("index.html")
    
    else:
        return render_template("index.html")

if __name__ == "__main__":
    
    app.run(debug = True)
