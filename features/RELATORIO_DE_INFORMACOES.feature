Feature: self evaluation
In order to complete my process of evaluation
As a student 
I want to evaluate me for each goal of the subject

GUI
Scenario: student doing his self-evaluation
Given The teacher has attributed "MPA” for the average
learning goals
And I am at the "Auto Avaliação" page
When I fill all the empty grade spaces for self-evaluation
Then I can see the button “Enviar” turning into a black color
And i am still at the “Auto Avaliação”  page
And I see grades from my teacher and my own self-evaluation grades

SERVIÇO
Scenario: student doing his self-evaluation
Given The student “Cicrano” has "MPA" for the average learning goals stored in system
When “Cicrano” sends “MPA” for his three self-evaluation grades
Then the system stores “MPA” for his self-evaluation grades in the system.

GUI
Scenario: student doing his self-assessment incompletely
Given I am at the "Auto Avaliação" page
And I see grades from my teacher and no grade for self-evaluation 
When  I left a empty space for self-evaluation
Then i see an unreachable red button “enviar”  
And i am still at the “Auto Avaliação”  page
And I see grades from my teacher and one grade for self-evaluation 

SERVIÇO
Scenario: student doing his self-assessment incompletely
Given The student “Cicrano” has "MPA" for the average learning goals stored in system
When “Cicrano” sends “NULL” for his self-evaluation grade
Then the system doesn’t store NULL’ for his self-evaluation grade in the system.