class Scores:
    
    def reset_u1_scores(vsHacksDB):
        cur = vsHacksDB.connection.cursor()
        #2.0 
        cur.execute("UPDATE u1Scores SET " +
                    "M1=NULL,M2=NULL,M3=NULL,M4=NULL, " +
                    "M5=NULL,M6=NULL,M7=NULL")
    
    """""
    def generate_score_dict(vsHacksDB, unit):
        
        cur = vsHacksDB.connection.cursor()
        
        result_value = cur.execute("SELECT * FROM u1Score")
        
        if result_value > 0: problems = cur.fetchall()    
            
        problem_list = []
        for problem in problems:
            problem_list.append(problem)
            problems_master_dict[module_id] = problem_list
    """""