

--@BLOCK
INSERT INTO Problems (problem_text, module_id, unit_id)
VALUES
    ("Answer the following questions acoording to the graph of y = 2x + 3:", 3, 1),
    ("Given the linear equation y = 2x - 8, solve the following:", 5, 1);

--@block
SELECT module_id FROM Steps WHERE id = 4;
UPDATE steps SET module_id = 5 WHERE id = 4;

--@block
SELECT unit_id FROM Modules;
UPDATE Modules SET unit_id = 1;

--@block
ALTER TABLE steps ADD CONSTRAINT FOREIGN KEY (module_id) REFERENCES Modules(id);

--@block;
INSERT INTO Steps (step_text, step_answer, problem_id)
VALUES
    ("Where does this function intersect the y-axis?", 3, 1),
    ("What is the slope of this function?", 2, 1),
    ("At what x does this graph intersect the x-axis?", 4, 2),
    ("At what x on this equation does y equal to -10?", -1, 2);

--@block;
--get modules in a unit
SELECT * FROM Units
INNER JOIN Modules
ON Modules.unit_id = Units.id;

--@block --get problems in a unit;
SELECT * FROM Units
INNER JOIN Problems
ON Problems.unit_id = Units.id;

--@block --get problems in a module;
SELECT * FROM Modules
INNER JOIN Problems
ON Problems.module_id = Modules.id;

--@block --get problems in a module;
SELECT * FROM Problems WHERE module_id = 3;

--@block --get steps of a problem;
SELECT * FROM Problems
INNER JOIN Steps
ON Steps.problem_id = Problems.id;

--@block --get steps of a problem that cover a certain module;
SELECT * FROM Modules
INNER JOIN Steps
ON Steps.module_id = Modules.id;

--@block
ALTER TABLE SCORES RENAME u1Scores;

--@block
select * from u1scores;

--@BLOCK
alter table SCORES rename u1Scores;
