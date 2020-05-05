insert into
    Company (companyID, companyName)
VALUES
    (001, "Apple"),
    (002, "Google"),
    (003, "Microsoft"),
    (004, "Amazon"),
    (005, "JPMorgan"),
    (006, "Adobe"),
    (007, "Facebook");



insert into
    jobs (companyID,jobID, jobName, Location, Type, Field, Title)
VALUES
    (001, 001001, "Apple Specialist", "Chicago, IL", "Full-time/Part-time","Business","Retail Customer Services and Sales"),
    (001, 001002, "Apple Technical Specialist", "Atlanta, GA","Full-time/Part-time", "Business", "Apple Technical Specialist"),
    (001, 001003, "Apple Human Engineering","Santa Clara Valley, CA","Internship","Engineering","HealthcareHuman Physiology Intern"),
    (001, 001004, "Software Engineer","Santa Clara Valley, CA","Full-time","Engineering","Software Engineer"),
    (001, 001005, "Silicon Validation Engineer","Portland, OR","Full-time","Engineering","Silicon Validation Engineer"),
    (001, 001006, "Apple Support PR Advisor","Los Angeles, CA","Full-time","International","Apple Support PR Advisor"),
    (001, 001007, "Apple Media Products Analytics","Santa Clara Valley, CA","Full-time","Engineering","Apple Media Products Analytics"),
    (002, 002001, "All-Source Analyst","San Bruno, CA","Full-time","Business","All-Source Analyst"),
    (002, 002002, "Technical Solutions Consultant","Mountain View, CA","Full-time","Engineering","Technical Solutions Consultant"),
    (002, 002003, "Software Engineer Compiler","Mountain View, CA","Full-time","Engineering","Software Engineer Compiler"),
    (002, 002004, "Teacher in Google Children's Center","Mountain View, CA","Full-time","Education","Teacher in Google Children's Center"),
    (002, 002005, "Data Analyst, Users and Products","Mountain View, CA","Full-time","Engineering","Data Analyst, Users and Products"),
    (002, 002006, "Technical Solutions Consultant, Google Fiber","Austin, TX","Full-time","Engineering","Technical Solutions Consultant, Google Fiber"),
    (002, 002007, "People Analyst, Reporting and Insights","New York, NY","Full-time","Business","People Analyst, Reporting and Insights"),
    (002, 002008, "Google Customer Solutions","Redwood City, CA","Full-time","Business","Product Insights Analyst"),
    (002, 002009, "Central Sales Operations Strategist","Sunnyvale, CA","Full-time","Engineering","Central Sales Operations Strategist"),
    (003, 003001, "Analytics Specialist","Redmond, WA","Full-time","Business","Analytics Specialist"),
    (003, 003002, "Program Manager","Redmond, WA","Full-time","Business","Program Manager"),
    (003, 003003, "Microsoft Legal Internship","Redmond, WA","Internship","Law","Microsoft Legal Internship"),
    (003, 003004, "Research Intern - Microsoft Translator","Redmond, WA","Internship","Engineering","Research Intern - Microsoft Translator"),
    (003, 003005, "Research Intern - Language Understanding","Bellevue, WA","Internship","Engineering","Research Intern - Language Understanding"),
    (003, 003006, "Research Intern - Medical Devices","Redmond, WA","Internship","Engineering","HealthcareResearch Intern - Medical Devices"),
    (003, 003007,"Data Analyst","Redmond, WA","Full-time","Engineering","Data Analyst"),
    (004, 004001,"Amazon Lead","Oak Brook, IL","Full-time","Business","Amazon Lead"),
    (004, 004002,"Data Center Technician","Manassas, VA","Full-time","Engineering","Data Center Technician"),
    (004, 004003,"Product Specialist","San Francisco, CA","Full-time","Business","Product Specialist"),
    (004, 004004,"IT Support Associate II","Channahon, IL","Full-time","Engineering","IT Support Associate II"),
    (005, 005001,"Legal- VP, Assistant General Counsel- Legal Discovery Management","Newark, DE","Full-time","Business","LawLegal- VP, Assistant General Counsel- Legal Discovery Management"),
    (005, 005002,"Recruiting Specialist - Sourcing Reports Specialist","Newark, DE","Full-time","Business","Recruiting Specialist - Sourcing Reports Specialist"),
    (005, 005003,"CIB - Global Commodities – Physical Natural Gas Trader – ED","Houston, TX","Full-time","International","CIB - Global Commodities – Physical Natural Gas Trader – ED"),
    (005, 005004,"Corporate Health Nurse","Fort Worth, TX","Full-time","Healthcare","Corporate Health Nurse"),
    (005, 005005,"Frontend Developer - UI Developer","New York, NY","Full-time","Engineering","Frontend Developer - UI Developer"),
    (006, 006001,"Data Scientist, Machine Learning Evaluation","San Francisco, CA","Full-time","Engineering","Data Scientist, Machine Learning Evaluation"),
    (006, 006002,"Government Relations Associate","McLean, VA","Full-time","Law","Government Relations Associate"),
    (006, 006003,"Education Evangelist","San Francisco, CA","Full-time","Education","Education Evangelist"),
    (006, 006004,"Marketing Content Specialist","Denver, CO","Full-time","Business","Marketing Content Specialist"),
    (006, 006005,"Senior Data Analyst","Austin, TX","Full-time","Engineering","Senior Data Analyst"),
    (006, 006006,"Product Marketing Specialist","Austin, TX","Full-time","Business","Product Marketing Specialist"),
    (006, 006007,"Computer Scientist","Boston, MA","Full-time","Engineering","EngineeringComputer Scientist"),
    (006, 006008,"Machine Learning Research Engineer","San Francisco, CA","Full-time","Engineering","Machine Learning Research Engineer"),
    (006, 006009,"Adobe Spark Content Writer and Editor","San Francisco, CA","Full-time","Business","Adobe Spark Content Writer and Editor"),
    (007, 007001,"Data Specialist, Global Operations","Austin, TX","Full-time","Engineering","Data Specialist, Global Operations"),
    (007, 007002,"Legal Investigation Analyst","Austin, TX","Full-time","Law","Legal Investigation Analyst"),
    (007, 007003,"Creative Coder - Instagram","San Francisco, CA","Full-time","Engineering","EngineeringCreative Coder - Instagram"),
    (007, 007004,"Business Product Specialist","Menlo Park, CA","Full-time","Business","Business Product Specialist"),
    (007, 007005,"Research Intern, Artificial Intelligence","Pittsburgh, PA","Internship","Engineering","Research Intern, Artificial Intelligence"),
    (007, 007006,"Demand Planning Analyst","Menlo Park, CA","Full-time","Business","Demand Planning Analyst"),
    (007, 007007,"Data Center Operations Engineer","Altoona, IA","Full-time","Engineering","Data Center Operations Engineer"),
    (007, 007008,"Product Specialist, Product Support Operations","Menlo Park, CA","Full-time","Healthcare","Product Specialist, Product Support Operations"),
    (007, 007009,"Data Center Logistics Analyst","Papillion, NE","Full-time","Engineering","Data Center Logistics Analyst"),
    (007, 007010,"Threat Investigator","Washington, DC","Full-time","International","Threat Investigator");


insert into
    Requires (jobID, skillName, level)
VALUES
    (001001,"Communication Skills",3),
    (001001,"Passion in learning",3),
    (001002,"Time Management",3),
    (001002,"Problem Solving",3),
    (001003,"Data Science",1),
    (001003,"Kinesiology",3),
    (001003,"User Studies",2),
    (001004,"HTTP",2),
    (001004,"Hadoop",2),
    (001004,"Problem Solving",3),
    (001004,"NoSQL",1),
    (001004,"Machine Learning",1),
    (001005,"Validation",2),
    (001005,"C",2),
    (001005,"Perl",2),
    (001006,"Spanish",3),
    (001006,"Communication Skills",3),
    (001006,"Time Management",3),
    (001007,"Problem Solving",3),
    (001007,"Communication Skills",3),
    (001007,"SQL",3),
    (001007,"Python",2),
    (001007,"Swift",1),
    (002001,"Communication Skills",3),
    (002001,"Analytics",3),
    (002002,"Python",3),
    (002002,"Java",3),
    (002002,"C++",3),
    (002002,"JavaScript",3),
    (002002,"HTML",1),
    (002002,"HTTP",2),
    (002002,"Android/iOS",1),
    (002003,"Java",3),
    (002003,"C++",3),
    (002003,"C",2),
    (002003,"Clang",1),
    (002004,"Teaching",2),
    (002004,"Responsible",3),
    (002004,"Communication Skills",3),
    (002005,"SQL",3),
    (002005,"Python",2),
    (002005,"R",3),
    (002005,"Data Science",3),
    (002006,"Python",3),
    (002006,"Java",3),
    (002006,"C++",3),
    (002006,"HTML",2),
    (002006,"JavaScript",2),
    (002006,"Problem Solving",3),
    (002007,"SQL",3),
    (002007,"Communication Skills",3),
    (002007,"Teamwork",2),
    (002008,"SQL",3),
    (002008,"relational databases",3),
    (002008,"Problem Solving",3),
    (002009,"Java",3),
    (002009,"Python",2),
    (002009,"Problem Solving",1),
    (002009,"UI",1),
    (003001,"Data Science",3),
    (003001,"Hadoop",3),
    (003001,"SQL",3),
    (003001,"NoSQL",2),
    (003001,"Teamwork",2),
    (003002,"Problem Solving",3),
    (003002,"Communication Skills",2),
    (003002,"Teaching",1),
    (003003,"Teamwork",3),
    (003003,"Communication Skills",3),
    (003003,"Time Management",3),
    (003003,"Analytics",1),
    (003004,"Machine Learning",3),
    (003004,"NLP",3),
    (003004,"Teamwork",2),
    (003005,"Python",2),
    (003005,"C++",3),
    (003005,"C",2),
    (003005,"Machine Learning",3),
    (003005,"NLP",3),
    (003005,"Communication Skills",1),
    (003006,"Data Science",1),
    (003006,"Teamwork",2),
    (003006,"Communication Skills",2),
    (003007,"Data Science",1),
    (003007,"Machine Learning",3),
    (003007,"NLP",2),
    (003007,"SQL",3),
    (003007,"NoSQL",2),
    (003007,"Communication Skills",2),
    (004001,"Communication Skills",2),
    (004001,"Passion in learning",3),
    (004002,"Linux",1),
    (004002,"Perl",2),
    (004002,"Python",2),
    (004003,"Communication Skills",3),
    (004003,"Problem Solving",2),
    (004003,"Teamwork",1),
    (004004,"Linux",1),
    (004004,"Android/iOS",1),
    (005001,"Communication Skills",3),
    (005001,"Time Management",3),
    (005001,"Analytics",2),
    (005001,"Problem Solving",1),
    (005002,"Analytics",3),
    (005002,"Problem Solving",3),
    (005002,"Communication Skills",2),
    (005003,"Teamwork",3),
    (005003,"Communication Skills",3),
    (005003,"Spanish",1),
    (005004,"nursing",3),
    (005004,"Communication Skills",3),
    (005004,"Time Management",2),
    (005005,"UI",3),
    (005005,"HTML",3),
    (005005,"Analytics",1),
    (005005,"JavaScript",3),
    (006001,"Machine Learning",3),
    (006001,"Teamwork",3),
    (006001,"Validation",2),
    (006002,"Communication Skills",3),
    (006002,"Problem Solving",3),
    (006002,"Passion in learning",3),
    (006003,"Teaching",3),
    (006003,"Communication Skills",3),
    (006003,"Problem Solving",3),
    (006004,"Communication Skills",3),
    (006004,"Problem Solving",3),
    (006004,"Responsible",2),
    (006004,"Teamwork",1),
    (006005,"SQL",3),
    (006005,"R",3),
    (006005,"Python",3),
    (006005,"Matlab",3),
    (006005,"Communication Skills",3),
    (006006,"Passion in learning",3),
    (006006,"Analytics",3),
    (006006,"Communication Skills",3),
    (006006,"Time Management",2),
    (006007,"HTML",3),
    (006007,"JavaScript",3),
    (006007,"Passion in learning",3),
    (006008,"Python",3),
    (006008,"Communication Skills",3),
    (006008,"NLP",2),
    (006008,"Data Science",1),
    (006009,"Communication Skills",3),
    (006009,"Time Management",3),
    (006009,"HTML",3),
    (007001,"SQL",3),
    (007001,"Communication Skills",3),
    (007001,"Perl",1),
    (007001,"Python",1),
    (007001,"Matlab",2),
    (007002,"Communication Skills",3),
    (007002,"Responsible",3),
    (007002,"Analytics",3),
    (007002,"Spanish",2),
    (007002,"SQL",1),
    (007003,"JavaScript",3),
    (007003,"Time Management",3),
    (007003,"Teamwork",2),
    (007004,"SQL",3),
    (007004,"Analytics",2),
    (007004,"Communication Skills",3),
    (007005,"Communication Skills",3),
    (007005,"C",2),
    (007005,"C++",2),
    (007005,"Python",2),
    (007006,"SQL",3),
    (007006,"Tableau",1),
    (007006,"Communication Skills",3),
    (007007,"Linux",2),
    (007007,"Python",3),
    (007007,"SQL",3),
    (007007,"HTTP",2),
    (007008,"SQL",1),
    (007008,"Teamwork",2),
    (007008,"Communication Skills",3),
    (007009,"Tableau",3),
    (007009,"SQL",3),
    (007009,"Communication Skills",3),
    (007009,"Data Science",1),
    (007010,"Communication Skills",3),
    (007010,"Time Management",3),
    (007010,"Data Science",2),
    (007010,"Problem Solving",2);


insert into
    Skills (skillName)
VALUES
    ("Communication Skills"),
    ("Passion in learning"),
    ("Time Management"),
    ("Problem Solving"),
    ("Data Science"),
    ("Kinesiology"),
    ("User Studies"),
    ("HTTP"),
    ("Hadoop"),
    ("NoSQL"),
    ("Machine Learning"),
    ("Validation"),
    ("C"),
    ("Perl"),
    ("Spanish"),
    ("SQL"),
    ("Python"),
    ("Swift"),
    ("Analytics"),
    ("Java"),
    ("C++"),
    ("JavaScript"),
    ("HTML"),
    ("Clang"),
    ("Teaching"),
    ("Responsible"),
    ("R"),
    ("Teamwork"),
    ("relational databases"),
    ("UI"),
    ("NLP"),
    ("Linux"),
    ("Android/iOS"),
    ("nursing"),
    ("Matlab"),
    ("Tableau"),
    ("CPA"),
    ("Tax Software Programs"),
    ("Microsoft Offices"),
    ("Leadership"),
    ("State License / Certification"),
    ("Medical Degree"),
    ("Patience"),
    ("Compassion"),
    ("Organizational"),
    ("Written Skills"),
    ("Multitasking"),
    ("Presentation");

insert INTO
    Skilled (UIN, skillName, proficiency)
VALUES
    (656966152, "C++", 3),
    (656966152, "SQL", 3),
    (656966152, "NoSQL", 3),
    (675513612, "Microsoft Offices", 4),
    (675513612, "Analytics", 3),
    (675513612, "R", 4),
    (675513612, "SQL", 1),
    (675513612, "Communication Skills", 3),
    (675513612, "Teamwork", 4),
    (675513612, "Leadership", 2),
    (674425016, "R", 3),
    (674425016, "Problem Solving", 4),
    (674425016, "Matlab", 4),
    (663626291, "Microsoft Offices", 4),
    (663626291, "Analytics", 2),
    (663626291, "R", 3),
    (663626291, "SQL", 2),
    (663626291, "Communication Skills", 4),
    (663626291, "Teamwork", 4),
    (663626291, "Leadership", 3),
    (650621898, "C", 2),
    (658738942, "Leadership", 4),
    (663636408, "Microsoft Offices", 4),
    (663636408, "Analytics", 3),
    (663636408, "R", 3),
    (663636408, "Communication Skills", 3),
    (663636408, "Teamwork", 4),
    (663636408, "Leadership", 2),
    (659099777, "Python", 3),
    (659099777, "Java", 3),
    (659099777, "C", 3),
    (659099777, "C++", 2),
    (659099777, "R", 3),
    (659099777, "NLP", 2),
    (677584175, "R", 3),
    (677584175, "SQL", 2),
    (677584175, "Microsoft Offices", 4),
    (677584175, "Teamwork", 4),
    (677584175, "Communication Skills", 3),
    (677584175, "Analytics", 3),
    (661561134, "Teamwork", 3),
    (661561134, "Microsoft Offices", 3),
    (661561134, "Communication Skills", 3),
    (671701797, "Microsoft Offices", 4),
    (671701797, "Teamwork", 3),
    (671701797, "Analytics", 2),
    (671701797, "Communication Skills", 3),
    (671701797, "Leadership", 2),
    (659460467, "Writing", 4),
    (659460467, "Social Media", 4),
    (659460467, "Communication Skills", 5),
    (668786319, "Python", 3),
    (668786319, "Android/iOS", 2),
    (668786319, "Matlab", 4),
    (665975450, "Microsoft Offices", 5),
    (665975450, "Communication Skills", 4),
    (665975450, "Leadership", 4),
    (670855078, "Python", 3),
    (668147079, "Microsoft Offices", 4),
    (668147079, "Communication Skills", 2),
    (668147079, "Teamwork", 4),
    (668147079, "Leadership", 3),
    (654310580, "Python", 3),
    (654310580, "Java", 4),
    (654310580, "C++", 3),
    (654310580, "SQL", 2),
    (654310580, "R", 2);

insert INTO
    Students (UIN, studentName, Gender, Standing, Major, GPA)
VALUES
    (656966152, "Cheng Lu", "Male", "Master", "Industrial Engineering", 3.85),
    (675513612, "Zhongyu Wu", "Female", "Senior", "Stat & Econ", 3.89),
    (674425016, "Chenxi Yan", "Male", "PhD", "Mechanical engineering", 3.87),
    (663626291, "Qiuning Ge", "Female", "Senior", "Statistics", 3.74),
    (650621898, "Jinrui Hu", "Male", "Freshman", "ECE", 3.95),
    (658738942, "Zhendong Hou", "Male", "Freshman", "Undeclared", 3.55),
    (663636408, "Hao Wang", "Female", "Junior", "Statistics", 3.97),
    (659099777, "Yu Hou", "Female", "Junior", "Stat+CS", 3.91),
    (677584175, "Han Xiao", "Female", "Senior", "Stat & Econ", 3.81),
    (661561134, "Duoduo Qi", "Female", "Junior", "Psychology & Economics", 3.93),
    (671701797, "Nanxi Chen", "Female", "Freshman", "Undeclared", 3.85),
    (659460467, "Yubo Xia", "Male", "Freshman", "Undeclared", 3.81),
    (668786319, "Peter", "Male", "Freshman", "engineering physics", 4.0),
    (665975450, "Jiashu Luo", "Male", "Freshman", "Undeclared", 3.61),
    (670855078, "Jack", "Male", "Freshman", "Undeclared", 3.7),
    (668147079, "Song Wang", "Male", "Sophomore", "ACE", 3.78),
    (654310580, "Yuchen Zeng", "Female", "Junior", "Stat+CS", 3.7);