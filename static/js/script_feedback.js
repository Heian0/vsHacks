const body=document.body;

const table = document.createElement("table");
var tr = document.createElement("tr")
var tr_2 = document.createElement("tr")

var title = document.createElement('h1');
title.innerText="Score Report";
body.appendChild(title);

var th_1 = document.createElement("th")
th_1.textContent="Question"
var th_2 = document.createElement("th")
th_2.textContent="Step"
var th_3 = document.createElement("th")
th_3.textContent="Your Answer"
th_3.id="your_answer"
var th_4 = document.createElement("th")
th_4.textContent="Correct Answer"
th_4.id="correct_answer"
var th_5 = document.createElement("th")
th_5.textContent="Answer A"
var th_6 = document.createElement("th")
th_6.textContent="Answer B"
var th_7 = document.createElement("th")
th_7.textContent="Answer C"
var th_8 = document.createElement("th")
th_8.textContent="Answer D"
var th_9 = document.createElement("th")
th_9.textContent="Answer E"

tr.appendChild(th_1)
//tr.appendChild(th_2)
tr.appendChild(th_3)
tr.appendChild(th_4)
tr.appendChild(th_5)
tr.appendChild(th_6)
tr.appendChild(th_7)
tr.appendChild(th_8)
tr.appendChild(th_9)
table.appendChild(tr)

var row_list =[]
var td_list = []
var tr_list = []

questCount= 20
stepCount = 2
for (var q=1; q<=questCount; q++){
    //console.log(q)
    var tr = document.createElement("tr")
    for (var a=0; a<8;a++){
        var td = document.createElement("td");
        if (a==0){
            td.textContent=exam_questions[q-1];
        }
        if (a==1){
            //given ans
            td.textContent=given_ans_list[q-1];
        }
        if (a==2){
            //cor ans
            td.textContent=correct_ans_list[q-1];
        }
        if (a==3){
            //a ans
            td.textContent=ans_list[q-1][0];
        }
        if (a== 4){
            //b ans
            td.textContent=ans_list[q-1][1];
        }
        if (a==5){
            //c ans
            td.textContent=ans_list[q-1][2];
        }
        if (a==6){
            //d ans
            td.textContent=ans_list[q-1][3];
        }
        if (a==7){
            //e ans
            td.textContent=ans_list[q-1][4];
        }

        td_list.push(td);
        tr.appendChild(td);
    }
    table.appendChild(tr);
    row_list.push(td_list);
};

/*for (var s=1; s<=20; s++){
    var tr = document.createElement("tr")
    for (var a=1; a<9;a++){
        var td = document.createElement("td");
        td.textContent = a.toString();
        td_list.push(td);
        tr.appendChild(td);    
    }
    table.appendChild(tr)
    row_list.push(td_list);
}*/

/*
for (var q=1; q<=questCount; q++){
    for (var s=1; s<=stepCount; s++){
        var td_list = [];
        for (var a=1; a<9;a++){
            var td = document.createElement("td")
            td.textContent
            td_list.push(td)
        }
    }
}*/

/*var td_1 = document.create("td")
var td_2 = document.create("td")
var td_3 = document.create("td")
var td_4 = document.create("td")
var td_5 = document.create("td")
var td_6 = document.create("td")
var td_7 = document.create("td")
var td_8 = document.create("td")*/

var td_1 = document.createElement("td")
td_1.textContent=""
var td_2 = document.createElement("td")
td_2.textContent="2"
var td_3 = document.createElement("td")
td_3.textContent="3"

/*tr_2.appendChild(td_2)
tr_2.appendChild(td_3)*/

table.appendChild(tr)
body.append(table)