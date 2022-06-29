from imp import new_module
from importlib.util import module_for_loader
from multiprocessing.connection import answer_challenge
import random

class Exam():

    exam = []
    exam_questions = []
    ans_list=[]
    scores_dict = {}
    given_ans = []

    def generate_ordered_prob_list(vsHacksDB, modules_selected):

        Exam.scores_dict = {}
        comprehensive_probs = []
        specialized_probs = []
        random_module_bank = []
        used_problems = []

        
        cur = vsHacksDB.connection.cursor()
        problems_master_list = []
        cur.execute("select * from u1scores")
        scores = cur.fetchone()
        print(scores)
        for i in range(7):
            Exam.scores_dict[i] = scores[i]

        
        for module_id in modules_selected:
            #print(module_id)
            
            cur.execute("select count(*) from problems where module_id = " + str(module_id))
            number_of_probs = cur.fetchone()[0]
            if number_of_probs > 1: rand_key = random.randint(1, number_of_probs)
            else: rand_key = 1
            result_value = cur.execute("SELECT * FROM Problems WHERE module_id = " + str(module_id))
            if result_value > 0: problems = cur.fetchall() 
            problem = problems[rand_key-1]
            comprehensive_probs.append(problem)  
            used_problems.append(problem)
            
            for module_id in Exam.scores_dict:
                if module_id in modules_selected:
                    key = Exam.scores_dict[module_id] * 10
                    for x in range (int(key)):
                        random_module_bank.append(module_id)

        #for i in random_module_bank:print(i)

        random.shuffle(random_module_bank)

        for i in range(len(modules_selected), 20):
            key = random.randint(0, len(random_module_bank)-1)
            #print(key)
            mod_key = random_module_bank[key-1]
            #print(mod_key)

            cur.execute("select count(*) from problems where module_id = " + str(mod_key))
            number_of_probs = cur.fetchone()[0]
            #print(number_of_probs)
            #gte numebr of used problem in a certain mod
            used_prob_in_mod_count = 0
            for i in used_problems:
                if i[2] == mod_key: used_prob_in_mod_count += 1
            #print(used_prob_in_mod_count)
            if number_of_probs > 1: rand_key = random.randint(1, number_of_probs - used_prob_in_mod_count)
            else: rand_key = 1
            #print(rand_key)
            result_value = cur.execute("SELECT * FROM Problems WHERE module_id = " + str(mod_key))
            if result_value > 0: 
                problems = cur.fetchall()
                temp = []
                for i in problems:
                    if i not in used_problems: temp.append(i)

            problem = temp[rand_key-1]
            #problem = unused_problems[rand_key - 1]
            #print(problem)
            specialized_probs.append(problem)
            used_problems.append(problem)

        for i in comprehensive_probs: problems_master_list.append(i)
        for i in specialized_probs: problems_master_list.append(i)   
        #for i in problems_master_list: print(i)

        return problems_master_list

    '''''
    def generate_steps_dict(vsHacksDB, problems_master_list):
        cur = vsHacksDB.connection.cursor()
        steps_master_list = []

        for i in problems_master_list:
            cur.execute("SELECT * FROM Steps WHERE problem_id = " + str(i[0]))
            steps_for_problem = cur.fetchall()
            for i in steps_for_problem: steps_master_list.append(i)

        return steps_master_list

    '''''

    def generate_ans_list(problems_master_list):
        ans_choices_master_list = []

        for i in problems_master_list:
            answer_choices = []
            answer_choices.append(i[4])
            answer_choices.append(i[5])
            answer_choices.append(i[6])
            answer_choices.append(i[7])
            answer_choices.append(i[8])
            random.shuffle(answer_choices)
            ans_choices_master_list.append(answer_choices)

        return ans_choices_master_list

    def generate_ans_key_list(problems_master_list):
        ans_key_list = []
        for i in problems_master_list: 
            ans_key_list.append(i[4])
            #print(i[4])
        return ans_key_list

    def score_answers(vsHacksDB, given_ans_list, ans_key_list, problem_master_list):

        cur = vsHacksDB.connection.cursor()
        print(len(given_ans_list))
        print(len(ans_key_list))
        if len(given_ans_list) != len(ans_key_list): print("we have a problem")
        #make sure a pydict overwrites
        new_module_scores = {}

        for i in range(7):
            cur = vsHacksDB.connection.cursor()
            cur.execute("select * from u1scores")
            scores = cur.fetchone()
            new_module_scores[i] = scores[i]
            print(new_module_scores[i])
        for i in range(len(given_ans_list)):
            if given_ans_list[i] == ans_key_list[i]:
                new_module_scores[problem_master_list[i][2]] = (new_module_scores[problem_master_list[i][2]]*10)/(10+1)
                print((new_module_scores[problem_master_list[i][2]]*10)/(10+1))
            else:
                new_module_scores[problem_master_list[i][2]] = (new_module_scores[problem_master_list[i][2]]*10+1)/(10+1)
                print((new_module_scores[problem_master_list[i][2]]*10+1)/(10+1))
        for i in new_module_scores:
        
            new_module_scores[i] = round(new_module_scores[i], 1)
            cur.execute("DROP TABLE u1scores")
            cur.execute("UPDATE u1Scores SET m" + str(i+1) + " = " + str(new_module_scores[i]))
            print(new_module_scores[i])

        return new_module_scores





    