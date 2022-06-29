const body=document.body;

var title = document.createElement('h1');
title.innerText="Quiz";
body.appendChild(title);

const form = document.createElement("form");
form.action = "/display-exam";
form.method = "POST";
form.name = 'submit-quiz'

questCount= 20;
stepCount = 2;
ansCount = 5;


for (var q=1; q<=questCount; q++){
    const br = document.createElement("br");
    const br1 = document.createElement("br");
    var div = document.createElement("div");
    form.append(br1)
    div.textContent=exam_questions[q-1];
    form.append(div);
    form.append(br);
    for (var a=1; a<=ansCount; a++){
        var button = document.createElement("input");
        button.type="radio";
        button.id=q.toString()+'-'+a.toString();            
        button.value=ans_list[q-1][a-1];
        button.name="q"+q.toString();
        var label = document.createElement("label");
        label.htmlFor = q.toString()+'-'+a.toString();
        if (a==1){
            label.innerHTML = ans_list[q-1][a-1];
        }
        if (a==2){
            label.innerHTML = ans_list[q-1][a-1];
        }
        if (a==3){
            label.innerHTML = ans_list[q-1][a-1];
        }
        if (a==4){
            label.innerHTML = ans_list[q-1][a-1];
        }
        if (a==5){
            label.innerHTML = ans_list[q-1][a-1]
        }
        form.appendChild(button);
        form.appendChild(label);
        form.append(br)
    }
}

/*
for (var q=1; q<=questCount; q++){
    const br = document.createElement("br");
    const br1 = document.createElement("br");
    var div = document.createElement("div");
    form.append(br1)
    div.textContent=exam_questions[q-1];
    form.append(div);
    form.append(br);
    for (var s=1; s<=stepCount; s++){
    var step = document.createElement("div");
    step.textContent="STEP "+s.toString();
    form.append(step)
        for (var a=1; a<=ansCount; a++){
            var button = document.createElement("input");
            button.type="radio";
            button.id=q.toString()+'-'+s.toString()+'-'+a.toString();
            button.value=q.toString()+'-'+s.toString()+'-'+a.toString();
            button.name="quest-step-"+q.toString()+'-'+s.toString();
            var label = document.createElement("label");
            label.htmlFor = q.toString()+'-'+s.toString()+'-'+a.toString();
            if (a==1){
                label.innerHTML = "Answer A";
            }
            if (a==2){
                label.innerHTML = "Answer B";
            }
            if (a==3){
                label.innerHTML = "Answer C";
            }
            if (a==4){
                label.innerHTML = "Answer D";
            }
            if (a==5){
                label.innerHTML = "Answer E"
            }
            form.appendChild(button);
            form.appendChild(label);
            form.append(br)
        }    
    }
}*/

const submit_button = document.createElement("input");
submit_button.type = "submit";
submit_button.value = "Submit Exam";
submit_button.id = "button";
submit_button.method = "POST";
form.append(submit_button);
body.append(form);

/*
const node = document.createElement("input");
node.type ="radio";
node.id = "a";
node.name = "answer_choice_1";
node.value = "A";

const label = document.createElement("label");

label.htmlFor = "a";
label.innerHTML = "Answer A";

form.appendChild(node);
form.appendChild(label);
body.append(form);

/*
questCount= 20
stepCount = 2
ansCount = 4

for (var q=1; q<=questCount; q++){
    for (var s=1; s<=stepCount; s++){
        for (var a=1; a<=ansCount; a++){
            if (a==1){
                console.log('a')
            }
            if (a==2){
                console.log('b')
            }
            if (a==3){
                console.log('c')
            }
            if (a==4){
                console.log('d')
            }
            //console.log(q.toString()+'-'+s.toString()+'-'+a.toString())
        }
    }
}*/


/*
for (var q=1; q<=questCount; q++){
    console.log(q)
}
for (var s=1; s<=stepCount; s++){
    console.log(s)
}

for (var a=1; a<=ansCount; a++){
    console.log(a)
}*/