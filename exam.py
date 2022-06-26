class Exam():
    
    def generate_exam(vsHacksDB, modules_selected):
        
        cur = vsHacksDB.connection.cursor()
        problems_master_dict = {}
        
        for module_id in modules_selected:
            
            result_value = cur.execute("SELECT * FROM Problems WHERE module_id = " + str(module_id))
        
            if result_value > 0: problems = cur.fetchall()    
            
            problem_list = []
            for problem in problems:
                problem_list.append(problem)
                problems_master_dict[module_id] = problem_list
                
        return problems_master_dict
            
            
    
    