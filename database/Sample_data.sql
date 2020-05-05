insert into 
    Company (companyID, companyName)
values
    (00001,"Apple"),
    (00002,"Uber"),
    (00003,"Amazon"),
    (00004,"Google"),
    (00005,"Facebook");



insert into 
    Jobs (jobID, companyID, jobName, Location, Type, Field, Title)
VALUES
    (001,00001,"sde","Bay Area","senior","cs","intern"),
    (002,00002,"sde","Bay Area","newgrad","cs","fulltime"),
    (003,00003,"research","Seattle","newgrad","ece","fulltime"),
    (004,00003,"media","Seattle","newgrad","social media","intern"),
    (005,00005,"research","Bay Area","junior","cs","fulltime");



insert INTO
    Requires (jobID, skillName, level)
VALUES
    (001,"python",3),
    (002,"python",4),
    (002,"java",3),
    (003,"c++",3),
    (004,"python",3),
    (004,"java",3),
    (004,"c++",3),
    (005,"java",4);



insert INTO
    Skilled (UIN, skillName, proficiency)
VALUES
    (0001,"python",3),
    (0002,"python",2),
    (0002,"java",3),
    (0003,"c++",3),
    (0004,"python",3),
    (0004,"c++",3),
    (0005,"c++",4);



insert into 
    Skills (skillName)
values
    ("python"),
    ("c++"),
    ("java");


insert into
    Students (UIN, studentName, Gender, Standing, Major, GPA)
VALUES
    (0001,"Allen","male","junior","me",3.80),
    (0002,"Brian","male","senior","social media",4.00),
    (0003,"Charlie","male","master","ece",4.00),
    (0004,"David","male","phd","ie",3.85),
    (0005,"Ella","female","freshman","cs",3.80);




