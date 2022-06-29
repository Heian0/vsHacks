class Soft_ans():
    
    def __init__(self):
        
        self.ans_list = []
        
    def write_to_ans_list(self, ans):
        
        self.ans_list.append( ord(ans) - 65 )
        
    def display_ans_list(self):
        
        for i in self.ans_list: print(i)
        
    def clear_soft_ans_list(self):
        
        self.self_ans_list = []