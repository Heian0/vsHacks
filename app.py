from ast import For
from operator import mod
from pydoc import render_doc
from re import M
from typing import Any
from unittest import result
from flask import Flask
from flask import render_template, request, redirect
from soft_ans import Soft_ans;
from datetime import datetime
from flask_mysqldb import MySQL
import yaml
from exam import Exam
import json

app = Flask(__name__)

with open('vsHacksDB.yaml', 'r') as file:
    db = yaml.safe_load(file)

app.config['MYSQL_HOST'] = db['mysql_host']
app.config['MYSQL_DB'] = 'vsHacks'
app.config['MYSQL_USER'] = 'vsHacksUser'
app.config['MYSQL_PASSWORD'] = 'vsHacks'

vsHacksDB = MySQL(app)

user_soft_ans = Soft_ans()
modules_selected_list = []


@app.route('/', methods = ['POST', 'GET'])
def home(): 
    render_template("home.html")
    if request.method == 'POST':
        return redirect("/module-select")

    return render_template("home.html")


@app.route('/module-select', methods = ['POST', 'GET'])
def module_select():
    cur = vsHacksDB.connection.cursor()
    cur.execute("select * from modules")
    modules = cur.fetchall()

    render_template("module-select.html", modules=modules)

    if request.method == 'POST':

        for i in (request.form.getlist('mod-select')):
            print(int(i)) 
            modules_selected_list.append(int(i))

        return redirect("/display-exam")

    return render_template("module-select.html", modules=modules)

    
@app.route('/display-exam', methods = ['POST', 'GET'])
def display_exam():

    Exam.exam = Exam.generate_ordered_prob_list(vsHacksDB, modules_selected_list)
    Exam.ans_list = Exam.generate_ans_list(Exam.exam)

    for i in Exam.exam: 
        Exam.exam_questions.append(i[1])
    
    #print(exam_questions)
    exam_questions_json = json.dumps(Exam.exam_questions)
    ans_list_json = json.dumps(Exam.ans_list)
    #print(ans_list_json)
    
    #render_template("display-exam.html", exam_questions_json = exam_questions_json, ans_list_json = ans_list_json)

    if request.method ==  'POST':

        for i in range(20):Exam.given_ans.append(request.form.get("q"+str(i+1)))
        
        print(Exam.given_ans)

        return redirect("/feedback")

    return render_template("display-exam.html", exam_questions_json = exam_questions_json, ans_list_json = ans_list_json)


@app.route("/feedback", methods = ['POST', 'GET'])
def feedback():
    
    correct_ans_list = Exam.generate_ans_key_list(Exam.exam)
    #for i in correct_ans_list:print(i)

    #print(exam_questions)
    exam_questions_json = json.dumps(Exam.exam_questions)
    ans_list_json = json.dumps(Exam.ans_list)
    correct_ans_list_json = json.dumps(correct_ans_list)
    given_ans_json = json.dumps(Exam.given_ans)

    Exam.score_answers(vsHacksDB, Exam.given_ans, correct_ans_list, Exam.exam)
    return render_template("feedback.html", exam_questions_json = exam_questions_json, ans_list_json = ans_list_json, correct_ans_list_json = correct_ans_list_json, given_ans_json = given_ans_json)
            
if __name__ == "__main__":
    
    app.run(debug = True)
